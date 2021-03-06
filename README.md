# Learning notes

This repository is for my personal learning notes about programming
languages and other coding related skills.

## Searching

GitHub allows to make a keyword search in specified path. So I use this
template to find something on all my notes. A directory can be a language or
something I am learning.

`github.com/{account}/{repository}/search?q=path:/{directory}+{query}`

So if I want to find the keyword `variables` on my `javascript` folder I
just use this URL:

https://github.com/espinosajuanma/learning/search?q=path:/javascript+variables

This is an example of how I setup my script to generate search URL. I made to
work with POSIX shell.

```sh
#!/bin/sh
test -z "$1" && echo "Please insert a path to search" && exit 1
query="$(echo "$*" | sed -e "s/$1 //" -e 's/\ /+/g')"
echo "https://github.com/espinosajuanma/learning/search?q=path:/$1+$query"
```

### Inspired

Using
[Zettelkasten](https://github.com/rwxrob/zet/tree/main/20210502004642)
method in GitHub and `isosec` as unique identifier is inspired by
[rwxrob](https://github.com/rwxrob).

> He may not like the way I sort Zettels inside *«categories»*. Well, I just
made something it works for me.
