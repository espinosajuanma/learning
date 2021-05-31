# The power of `!!`

This is one of the more magical things of **vim**. Once you are
familiarized with movement, and shell scripting at least at my beginner
level, you can use `!!` in NORMAL mode so you can run a script or a
command.

An useful situation is when you are making a README file and want to
include the code of one of your scripts. You type *bang bang* `!!` and
then the command `cat $(which scriptname)` and it is going to print in
the file the actual source code of *scriptname* in this case.

I made a snippet to make it work with POSIX shell using `command -v`
instead of `which`. Now if I want to embed a snippet code I can call
the next script. I printed the next block of code using it itself with
`!!code code`. Just added 'sh' after backticks.

```sh
#!/bin/sh

echo "\`\`\`"
cat "$(command -v "$1")"
echo "\`\`\`"
```

[code](https://github.com/espinosajuanma/dot/blob/main/scripts/code)

[Why command -v](https://github.com/rwxrob/zet/tree/main/20210531032354)
