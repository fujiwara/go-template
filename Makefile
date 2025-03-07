.PHONY: clean test

FIXME: go.* *.go
	go build -o $@ ./cmd/FIXME

clean:
	rm -rf FIXME dist/

test:
	go test -v ./...

install:
	go install github.com/fujiwara/FIXME/cmd/FIXME

dist:
	goreleaser build --snapshot --clean
