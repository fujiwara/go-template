package main

import (
	"context"
	"log"

	app "github.com/fujiwara/go-template"
)

func main() {
	ctx := context.TODO()
	if err := run(ctx); err != nil {
		log.Fatal(err)
	}
}

func run(ctx context.Context) error {
	return app.Run(ctx)
}
