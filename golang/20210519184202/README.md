# [Go] Variables

## Declaring a variable

Go is a strongly typed language. So it need to say what type of value is
going to be saved in a variable. For now I just going to be focus on
`string` and `int` types.

```go
var name string = "Juan"
var age int = 28
```

The keyword `var` is used to declare a new variable with a name and a
type. Other way to bulk declare multiples variables can use `var()`.

```go
var (
  name, surname string = "Juan", "Manuel"
  age int = 28
)
```

There is a short way to declare a variable using the short assignment
statement `:=`. It will set the variable with the implicit type.

```go
name := "Juan Manuel"
age := 28
```

