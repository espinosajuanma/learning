# `base64` - Wrap and avoid using `echo` when piping

To get a good base64 encode of an string in bash avoid using `echo` to
pipe the stdout. Use `printf` instead.

Also `base64` for default wrap the output in 76 characters long. Use the
option `-w 0` to remove the non required spaces.

```bash
printf "My String" | base64 -w 0
```
