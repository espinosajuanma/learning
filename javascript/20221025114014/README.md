# Use `in` operator to check if object has an specific property

Usually when I try to check if an object has a property I use:

```js
let obj = {
  myAttr: 100
};
if (obj.myAttr) {
  // do Something
}
```

But this could lead to some issues if that property is falsy:

```js
let obj = {
  myAttr: 0
};
if (obj.myAttr) {
  // do Something
}
```

So as `obj.myAttr` is `0` javascript interpret it as a falsy statement.

There is a pretty unused operator which I would like to know earlier
about it, and it is the `in` operator.

This would return `true` if the property exists in the object.

```js
let obj = {
  myAttr: 0
};
if ('myAttr' in obj) {
  // do Something
}
```

