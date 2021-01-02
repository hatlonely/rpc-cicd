binary=rpc-cicd
user=hatlonely
repository=rpc-cicd
version=$(shell git describe --tags | awk '{print(substr($$0,2,length($$0)))}')
export GOPROXY=https://goproxy.cn

define BUILD_VERSION
  version: $(shell git describe --tags)
gitremote: $(shell git remote -v | grep fetch | awk '{print $$2}')
   commit: $(shell git rev-parse HEAD)
 datetime: $(shell date '+%Y-%m-%d %H:%M:%S')
 hostname: $(shell hostname):$(shell pwd)
goversion: $(shell go version)
endef
export BUILD_VERSION

.PHONY: build
build: cmd/main.go $(wildcard internal/*/*.go) Makefile vendor
	mkdir -p build/bin && mkdir -p build/config
	go build -ldflags "-X 'main.Version=$$BUILD_VERSION'" -o build/bin/${binary} cmd/main.go
	cp config/app.json build/config/

clean:
	rm -rf build

vendor: go.mod go.sum
	go mod tidy
	go mod vendor

codegen: api/cicd.proto third/openapi-generator-cli.jar
	mkdir -p api/gen/go && mkdir -p api/gen/swagger && mkdir -p api/gen/dart && mkdir -p api/gen/openapi
	protoc -I.. -I. --gofast_out=plugins=grpc,paths=source_relative:api/gen/go/ $<
	protoc -I.. -I. --grpc-gateway_out=logtostderr=true,paths=source_relative:api/gen/go $<
	protoc -I.. -I. --swagger_out=logtostderr=true:api/gen/swagger $<
	# protoc -I.. -I. --openapiv2_out=logtostderr=true,repeated_path_param_separator=ssv:api/gen/openapi $<
	# java -jar third/swagger-codegen-cli.jar generate -i api/gen/swagger/api/cicd.swagger.json -l dart -o api/gen/dart
	# swagger-codegen-cli 依赖 browser_client，不能编译成 android
	# openapi-generator-cli 4.3.1 不支持 empty
	# openapi-generator-cli 5.0.0-beta3 数组为 const 无法修改
	java -jar third/openapi-generator-cli.jar generate -i api/gen/swagger/api/cicd.swagger.json -g dart -o api/gen/dart

.PHONY: submodule
submodule:
	git submodule init
	git submodule update

.PHONY: image
image:
	docker build --tag=${user}/${repository}:${version} .

.PHONY: k8senv
k8senv:
	#kubectl run -n test dind --image=docker:dind --restart=Never --overrides='{"spec": {"containers": [{"name": "dind", "image": "docker:dind", "securityContext": {"privileged": true} }]}}'
	kubectl run -n test dind --privileged --image=docker:dind --restart=Never

.PHONY: k8simage
k8simage:
	kubectl exec -n test dind -ti -- rm -rf /go/src/${user}/${repository}
	kubectl exec -n test dind -ti -- mkdir -p /go/src/${user}/
	kubectl cp . test/dind:/go/src/${user}/${repository}/
	kubectl exec -n test dind -ti -- /bin/sh -c "cd /go/src/${user}/${repository} && make image"

third/swagger-codegen-cli.jar:
	mkdir -p third
	wget https://repo1.maven.org/maven2/io/swagger/swagger-codegen-cli/2.4.17/swagger-codegen-cli-2.4.17.jar -O third/swagger-codegen-cli.jar

third/openapi-generator-cli.jar:
	mkdir -p third
	wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/4.3.1/openapi-generator-cli-4.3.1.jar -O third/openapi-generator-cli.jar
