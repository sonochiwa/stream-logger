.PHONY: build
.SILENT: build run

build:
	export $GOPATH=/usr/local/go/src
	go build -o build/main cmd/stream_logger/main.go
	@echo "[make] App successfully built!"

run:
	export $GOPATH=/usr/local/go/src
	@echo "[make] Run app..."
	./build/main

build_and_run: build run