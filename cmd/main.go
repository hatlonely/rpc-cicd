package main

import (
	"context"
	"fmt"
	"net"
	"net/http"
	"os"
	"os/signal"
	"syscall"
	"time"

	"github.com/grpc-ecosystem/grpc-gateway/runtime"
	"github.com/hatlonely/go-kit/bind"
	"github.com/hatlonely/go-kit/cli"
	"github.com/hatlonely/go-kit/config"
	"github.com/hatlonely/go-kit/flag"
	"github.com/hatlonely/go-kit/logger"
	"github.com/hatlonely/go-kit/refx"
	"github.com/hatlonely/go-kit/rpcx"
	"google.golang.org/grpc"

	"github.com/hatlonely/rpc-cicd/api/gen/go/api"
	"github.com/hatlonely/rpc-cicd/internal/executor"
	"github.com/hatlonely/rpc-cicd/internal/service"
	"github.com/hatlonely/rpc-cicd/internal/storage"
)

var Version string

type Options struct {
	flag.Options

	Http struct {
		Port int
		Cors rpcx.CORSOptions
	}
	Grpc struct {
		Port int
	}

	ExitTimeout time.Duration `dft:"10s"`

	Storage  storage.Options
	Executor executor.CICDOptions
	Service  service.Options

	Mongo cli.MongoOptions

	Logger struct {
		Info logger.Options
		Grpc logger.Options
		Exec logger.Options
	}
}

func Must(err error) {
	if err != nil {
		panic(err)
	}
}

func main() {
	var options Options
	Must(flag.Struct(&options, refx.WithCamelName()))
	Must(flag.Parse(flag.WithJsonVal()))
	if options.Help {
		fmt.Println(flag.Usage())
		return
	}
	if options.Version {
		fmt.Println(Version)
		return
	}

	if options.ConfigPath == "" {
		options.ConfigPath = "config/app.json"
	}
	cfg, err := config.NewConfigWithSimpleFile(options.ConfigPath)
	Must(err)
	Must(bind.Bind(&options, []bind.Getter{
		flag.Instance(), bind.NewEnvGetter(bind.WithEnvPrefix("CICD")), cfg,
	}, refx.WithCamelName(), refx.WithDefaultValidator()))

	grpcLog, err := logger.NewLoggerWithOptions(&options.Logger.Grpc)
	Must(err)
	execLog, err := logger.NewLoggerWithOptions(&options.Logger.Exec)
	Must(err)
	infoLog, err := logger.NewLoggerWithOptions(&options.Logger.Info)
	Must(err)

	mongoCli, err := cli.NewMongoWithOptions(&options.Mongo)
	Must(err)

	storage, err := storage.NewCICDStorageWithOptions(mongoCli, &options.Storage)
	Must(err)

	svc, err := service.NewCICDServiceWithOptions(storage, &options.Service)
	Must(err)

	executor := executor.NewCICDExecutorWithOptions(storage, &options.Executor)
	executor.Run()
	defer executor.Stop()
	executor.SetLogger(execLog)

	grpcServer := grpc.NewServer(rpcx.GRPCUnaryInterceptor(grpcLog, rpcx.WithGRPCUnaryInterceptorDefaultValidator()))
	api.RegisterCICDServiceServer(grpcServer, svc)

	go func() {
		address, err := net.Listen("tcp", fmt.Sprintf("0.0.0.0:%v", options.Grpc.Port))
		Must(err)
		Must(grpcServer.Serve(address))
	}()

	mux := runtime.NewServeMux(
		rpcx.MuxWithMetadata(),
		rpcx.MuxWithIncomingHeaderMatcher(),
		rpcx.MuxWithOutgoingHeaderMatcher(),
		rpcx.MuxWithProtoErrorHandler(),
	)
	Must(api.RegisterCICDServiceHandlerFromEndpoint(
		context.Background(), mux, fmt.Sprintf("0.0.0.0:%v", options.Grpc.Port), []grpc.DialOption{grpc.WithInsecure()},
	))

	httpServer := http.Server{Addr: fmt.Sprintf(":%v", options.Http.Port), Handler: rpcx.CORSWithOptions(mux, &options.Http.Cors)}
	go func() {
		if err := httpServer.ListenAndServe(); err != nil && err != http.ErrServerClosed {
			infoLog.Warnf("httpServer.ListenAndServe, err: [%v]", err)
		}
	}()

	infoLog.Info(options)
	infoLog.Info("start success")
	stop := make(chan os.Signal, 1)
	signal.Notify(stop, os.Interrupt, syscall.SIGTERM)
	<-stop
	infoLog.Info("receive exit signal")
	ctx, cancel := context.WithTimeout(context.Background(), options.ExitTimeout)
	defer cancel()
	if err := httpServer.Shutdown(ctx); err != nil {
		infoLog.Warnf("httServer.Shutdown failed, err: [%v]", err)
	}
	grpcServer.Stop()
	infoLog.Info("server exit properly")
}
