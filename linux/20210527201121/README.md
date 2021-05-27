# Concatenate sed expressions

If you need to make two different substitutions you doesn't need to use two
separate `sed` commands, you can do it all in one.

```sh
echo "$variable" | sed -e 'expression1' -e 'expression2'
```
