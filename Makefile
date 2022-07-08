build:
	cp "$$(go env GOROOT)/misc/wasm/wasm_exec.js" ./static
	GOOS=js GOARCH=wasm go build -o static/build/seclang-validator.wasm cmd/seclang-validator/main.go

run: build
	go run ./cmd/webserver