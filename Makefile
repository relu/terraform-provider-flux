all: test build

tidy:
	go mod tidy

fmt:
	go fmt ./...

vet:
	go vet ./...

test: tidy fmt vet
	go test ./... -coverprofile cover.out

build:
	CGO_ENABLED=0 go build -o ./bin/flux main.go
