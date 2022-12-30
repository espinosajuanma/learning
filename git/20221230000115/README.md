# Use `git rebase -i` to remove a commit

Careful, it will remove all the commit AND the changes you made.

```bash
git rebase -i HEAD~1
```

This will open the editor and you can remove one of the latest 3
commits.

If the commit is in the remote branch you may need to do a `git push
--force`.

If is ideal or not, it is a question I still don't answer.
