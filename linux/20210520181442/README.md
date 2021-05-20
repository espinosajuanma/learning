# [bash] type command

```
$ type type
type is a shell builtin
```

The `type` command is used to find out the information about a linux
command.

It is useful to find whether a command is an alias, shell built-in,
file, function or keyword.

```
$ type ls
ls is aliased to `ls --color=auto`
```

Wanted to use `man type` and get `No manual entry for type`.
For more information use `help type`.

## Flags

- `-t` - Use to find only the type (alias, file, builtin, ...)
- `-p` - Use to show the absolute path of command
- `-a` - Use to display all information about the command
