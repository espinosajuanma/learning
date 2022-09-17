# Push script

Weird branch names to push? Well, it happen to me all the time.

I made this silly script that will just push whatever you have in the
current branch you are. I just named `push` as a shortcut of `git
push`.

```bash
git push $(git branch --show-current)
```
