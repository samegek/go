[![Sourcegraph](https://sourcegraph.com/github.com/samegek/go/-/badge.svg)](https://sourcegraph.com/github.com/samegek/go?badge)
[![GoDoc](http://img.shields.io/badge/go-documentation-blue.svg?style=flat-square)](https://pkg.go.dev/github.com/samegek/go)
[![Build Status](https://travis-ci.org/samegek/go.svg?branch=master)](https://travis-ci.org/samegek/go)
[![codecov](https://codecov.io/gh/samegek/go/branch/master/graph/badge.svg)](https://codecov.io/gh/samegek/go)
[![rcard](https://goreportcard.com/badge/github.com/samegek/go)](https://goreportcard.com/report/github.com/samegek/go)
[![License](http://img.shields.io/badge/license-mit-blue.svg?style=flat-square)](https://raw.githubusercontent.com/samegek/go/master/LICENSE)
[![Gitter chat](https://badges.gitter.im/gitterHQ/gitter.png)](https://gitter.im/samegek/Lobby)

A high-performance 100% compatible drop-in replacement of "encoding/json"

# Benchmark

![benchmark](http://jsoniter.com/benchmarks/go-benchmark.png)

Source code: https://github.com/samegek/go-benchmark/blob/master/src/github.com/samegek/go-benchmark/benchmark_medium_payload_test.go

Raw Result (easyjson requires static code generation)

|                 | ns/op       | allocation bytes | allocation times |
| --------------- | ----------- | ---------------- | ---------------- |
| std decode      | 35510 ns/op | 1960 B/op        | 99 allocs/op     |
| easyjson decode | 8499 ns/op  | 160 B/op         | 4 allocs/op      |
| jsoniter decode | 5623 ns/op  | 160 B/op         | 3 allocs/op      |
| std encode      | 2213 ns/op  | 712 B/op         | 5 allocs/op      |
| easyjson encode | 883 ns/op   | 576 B/op         | 3 allocs/op      |
| jsoniter encode | 837 ns/op   | 384 B/op         | 4 allocs/op      |

Always benchmark with your own workload.
The result depends heavily on the data input.

# Usage

100% compatibility with standard lib

Replace

```go
import "encoding/json"
json.Marshal(&data)
```

with

```go
import jsoniter "github.com/samegek/go"

var json = jsoniter.ConfigCompatibleWithStandardLibrary
json.Marshal(&data)
```

Replace

```go
import "encoding/json"
json.Unmarshal(input, &data)
```

with

```go
import jsoniter "github.com/samegek/go"

var json = jsoniter.ConfigCompatibleWithStandardLibrary
json.Unmarshal(input, &data)
```

[More documentation](http://jsoniter.com/migrate-from-go-std.html)

# How to get

```
go get github.com/samegek/go
```

# Contribution Welcomed !

Contributors

- [thockin](https://github.com/thockin)
- [mattn](https://github.com/mattn)
- [cch123](https://github.com/cch123)
- [Oleg Shaldybin](https://github.com/olegshaldybin)
- [Jason Toffaletti](https://github.com/toffaletti)

Report issue or pull request, or email taowen@gmail.com, or [![Gitter chat](https://badges.gitter.im/gitterHQ/gitter.png)](https://gitter.im/samegek/Lobby)
