# [JS] Variables

## Declaring a variable

```js
var name = "Juanma";
```

Variables are declared with the keyword `var` the name of the variable.
To initialize a variable it needs to use the equal sign and then write
the value.

```js
let username = "espinosajuanma";
```

`let` keyword allows you to declare a variable limited to the scope of a
block statement or expression. `var` declare it globally (or locally to
an entire function).

```js
var name = "Juan";
{
  var name = "Manuel";
}
console.log(name); // "Manuel"

let user = "Juan";
{
  let user = "Manuel";
}
console.log(user); // "Juan"
```


