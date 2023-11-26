.SILENT: run_master build_master run_agent build_agent

# master commands
build_master:
	go build -o master/build/main master/cmd/stream_logger/main.go

run_master:
	./master/build/main

master: build_master run_master

# agent commands
build_agent:
	go build -o agent/build/main agent/cmd/stream_logger/main.go

run_agent:
	./agent/build/main

agent: build_agent run_agent
