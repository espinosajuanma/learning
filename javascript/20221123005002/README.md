# `for in` returns a `string`

Well of course, this is a really noob mistake I made.

`for in` is supposed to be use iterating object keys. But sometimes I
use it with arrays and I forget that this returns the index of the array
but like a string.

```js
const arr = [{ id: 12 }, { id: 56 }, { id: 89 }];
for (let index in arr) {
  let nextObject = arr[index + 1];
  console.log(nextObject);
}
```

Returns:

```js
undefined
undefined
undefined
```

When we expect:

```js
{ id: 56 }
{ id: 89 }
undefined
```

This is because I was just concatenating the `index` *STRING* with `1`.

There is two possibles solutions to this. Depends how we want this to be
solve.

## Casting

Use `Number()` or `parseInt()` to cast the string to a number.

```js
for (let index in arr) {
  let nextObject = arr[Number(index) + 1];
  console.log(nextObject);
}
```

## Use `.forEach()` method

```js
arr.forEach((v, i) => {
  let nextObject = arr[i + 1];
  console.log(nextObject);
});
```
