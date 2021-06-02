# Substitution command `:s/foo/bar/`

Usage:

```
:[range]s/{pattern}/{string}/[flags] [count]
```

Replace in current line *foo* for *bar* with `s/foo/bar/`. But it will
replace just the first foo.

Add `g` to make ti *global* and replace all occurrences `s/foo/bar/`

To replace in all document add `%` like range `%s/foo/bar/g`

Find more [here](https://linuxize.com/post/vim-find-replace/)
