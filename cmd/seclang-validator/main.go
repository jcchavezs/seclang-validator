package main

import (
	"syscall/js"

	"github.com/corazawaf/coraza/v3"
	"github.com/corazawaf/coraza/v3/seclang"
)

func main() {
	js.Global().Set("validate", js.FuncOf(validate))
	// Prevent the function from returning, which is required in a wasm module
	select {}
}

func validate(_ js.Value, args []js.Value) interface{} {
	res := map[string]interface{}{}

	w := coraza.NewWaf()
	p, err := seclang.NewParser(w)
	if err != nil {
		res["error"] = err.Error()
		return res
	}

	if err := p.FromString(args[0].String()); err != nil {
		res["error"] = err.Error()
		return res
	}

	return res
}
