.SILENT: run_master build_master run_agent build_agent

build_master:
	go build -o master/master/main master/cmd/stream_logger/main.go
	@echo "Master app successfully built!"

run_master:
	@echo "Run master app..."
	./master/build/main

build_and_run_master: build_master run_master

build_agent:
	go build -o agent/build/main agent/cmd/stream_logger/main.go
	@echo "Agent app successfully built!"

run_agent:
	@echo "Run agent app..."
	./agent/build/main

build_and_run_agent: build_agent run_agent
