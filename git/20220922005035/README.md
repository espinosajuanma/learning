# Use `git commit --amend` to add changes to the latest commit

I love this one. So you just commit to your git repository. But you
realize you forget something, or just keep working in that feature and
you don't want to commit again (that would be awful).

So you want to get the new changes to your latest commit, use then `git
commit --amend`.

> Only if you didn't push your changes to a remote repository

```bash
git init
echo 'Hello World' > file1.txt
git add file1.txt
git commit -m 'First commit'
echo 'Hello World 2' > file2.txt
git add file2.txt
git commit --amend
git status
git log
```

If you check the log history you will find only one commit and all the
changes you made in that one.

