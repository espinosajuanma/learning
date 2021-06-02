# `which` isn't POSIX compliant. Use `command -v` instead

I wanted to make a script for POSIX shell using `which` but neither that
or `type -P` work with shell. Use that for bash instead or just `command
-v`

```
#!/bin/sh
exec vi "$(command -v $1)"
```

Check [/code](./code)
