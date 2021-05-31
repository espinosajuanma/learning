# Exit status

The `$?` variable represents the exit status of the previous command.

> Exit status is a numerical value returned by every command upon its
> completion. As a rule, most commands return an exit status of 0 if
> they were successful, and 1 if they were unsuccessful.

[source](https://www.tutorialspoint.com/unix/unix-special-variables.htm)

```sh
$ badcommand; echo $?
-bash: badcommand: command not found
127
```

In a general rule I will do `&& exit 1` when it was bad command. And `&&
exit 0` when it was a good one or just `&& exit`
