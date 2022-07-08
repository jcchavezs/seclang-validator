module github.com/jcchavezs/seclang-validator

go 1.18

require github.com/corazawaf/coraza/v3 v3.0.0-20220704191608-b64ede757c74

require (
	github.com/cloudflare/ahocorasick v0.0.0-20210425175752-730270c3e184 // indirect
	github.com/corazawaf/libinjection-go v0.0.0-20220207031228-44e9c4250eb5 // indirect
	golang.org/x/net v0.0.0-20220520000938-2e3eb7b945c2 // indirect
)

replace github.com/corazawaf/coraza/v3 => ../../corazawaf/coraza
