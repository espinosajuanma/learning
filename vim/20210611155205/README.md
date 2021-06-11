# Use `%` in command to refer same file

If you want to run the same file you are editing without exit from vim
use `%` to refer the file.

- `:.!./%` - Execute file if has permission
- `:.!cat %` - Execute cat with current file as argument
