# Flat/squash your multiple git branch commits into one

> One commit to rule them all

I like to make things tidy, and I don't see a reason to have, in some
tasks, multiple commits to make a pull request.

So I learned today that I can do some tricky git commands to "un-commit"
all the commits in that branch and bundle them into one.

```bash
git reset $(git merge-base master $(git branch --show-current))
git add .
git commit -m 'My bundle commit'
```

And if I already push those commits to the remote repository I can make
a `git push --force` to force the local git history into the remote one.

