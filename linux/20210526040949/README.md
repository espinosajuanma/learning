# Don't use `read -p` 

- `-p` flag with `read` isn't POSIX
  - use `echo` instead to prompt a message
- `-n` flag with `echo` isn't POSIX
  - use `\c` at the end of the string to prevent a break line

This is bash

```sh
read -rp "Your name: " name
```

This is POSIX

```sh
echo "Your name: \c" && read -r name
```

[rwxrob/zet/20210513223029](https://github.com/rwxrob/zet/tree/5d25567e64fb3226bac2b16ae5cf550f05c8a6ce/20210513223029)
