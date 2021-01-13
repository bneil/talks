.PHONY: build clean test

build:
	env GOOS=linux go build -ldflags="-s -w" -o bin/backend main.go

darwin:
	env GOOS=darwin go build -o bin/d_backend main.go

test:
	go -v ./...

clean:
	rm -rf ./bin
