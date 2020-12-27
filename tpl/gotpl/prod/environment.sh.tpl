#!/usr/bin/env bash

export NAMESPACE="prod"
export NAME="rpc-cicd"
export REGISTRY_SERVER="{{.registry.server}}"
export REGISTRY_USERNAME="{{.registry.username}}"
export REGISTRY_PASSWORD="{{.registry.password}}"
export REGISTRY_NAMESPACE="{{.registry.namespace}}"
export MONGO_URI="mongodb://{{.mongo.username}}:{{.mongo.password}}@{{.mongo.server}}"
export ELASTICSEARCH_SERVER="elasticsearch-master:9200"
export IMAGE_PULL_SECRET="hatlonely-pull-secrets"
export IMAGE_REPOSITORY="${NAME}"
export IMAGE_TAG="$(cd .. && git describe --tags | awk '{print(substr($0,2,length($0)))}')"
export REPLICA_COUNT=3
export INGRESS_HOST="k8s.cicd.hatlonely.com"
export INGRESS_SECRET="k8s-secret"
export K8S_CONTEXT="homek8s"
