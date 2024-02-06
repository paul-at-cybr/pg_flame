.PHONY: build

GOBIN := $(shell go env GOPATH)/bin

install:
	@go build -o pgflame cmd/pgflame/main.go \
	&& cp -f pgflame $(GOBIN)/pgflame \
	&& rm pgflame

build:
	@go build -o pgflame cmd/pgflame/main.go
