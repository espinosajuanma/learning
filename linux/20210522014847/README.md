# Executable files

Executable files can be human readable if they are coded with
an interpreted programming language.

Interpreted means that another program is needed to read and run the
instructions. It can't be executed by it self like a compiled binary
file (machine language).

All commands are code, these are interpreted by current `$SHELL`.

The file needs to be executable for the current user: `chmod +x
filename`.

The file needs to have a header to know what is the correct interpreter
to run that file: `#!/bin/bash`, `#!/usr/bin/python3`.

To be global *«commands»* these files needs to be inside a directory
that is in the environment `$PATH` variable.

Check the interpreter path with `which python3`. Check the type of
command with `type command`.

```sh
#!/bin/bash
echo "Hello World!"
```
