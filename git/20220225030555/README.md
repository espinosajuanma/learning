# Use `git add -p` to commit chunks

Sometimes I take several tasks and try to resolve them in one go. But
for the sake of good organization we have to commit each task in a
different branch to make a pull request.

It is messy if I have to work two different tasks in the same file. In
this case I can't start the others tasks until I commit the first one.

```sh
git add -p
```

This command is the way to go. Git is going to show one by one chunks of
code that you edited. For each one you can say `y` or `n` to add to the
next commit.
