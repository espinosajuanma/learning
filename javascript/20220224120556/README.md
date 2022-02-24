# Use `Intl.ListFormat` for print array list

I learned today about the `Intl` library in javascript.

```js
let names = ['Juanma', 'Santi', 'Nico', 'Mariano']
let list = new Intl.ListFormat('en').format(names)
console.log(list)
```

This will show a list of the elements in a pretty way, with the language
we choose.

`Juanma, Santi, Nico, and Mariano`, take a look at the last element
which is separated from the list with the `and` word.

We can do the same if we need the list with other language or even to
separate it not like a conjunction, like a disjunction:

## Spanish example

```js
let nombres = ['Juanma', 'Santi', 'Nico', 'Mariano']
let lista = new Intl.ListFormat('es').format(nombres)
console.log(lista) // Juanma, Santi, Nico y Mariano
```

## Disjunction example

```js
let names = ['Juanma', 'Santi', 'Nico', 'Mariano']
let list = new Intl.ListFormat('en', {type: 'disjunction'}).format(names)
console.log(list) // Juanma, Santi, Nico, or Mariano
```

