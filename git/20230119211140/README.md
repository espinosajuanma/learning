# Use `git -C [path] [command]` to run a git command on specified path

This is going to improve a lot my way to handle git repositories while I
am working on other directories. I mean, it could be very verbose if I
am trying to use it daily in my terminal work, but it could be really
useful on bash scripts or cli tools.

So I can set a configurable variable for a repository path and run git
commands in that repository without having to `cd` into them.

```bash
REPO_PATH="/repo"

# This work from any directory
git -C "$REPO_PATH" commit -m 'Default message'
```

## From `man git`

```
 -C <path>
     Run as if git was started in <path> instead of the current working directory. When multiple -C options are given, each
     subsequent non-absolute -C <path> is interpreted relative to the preceding -C <path>. If <path> is present but empty, e.g.  -C
     "", then the current working directory is left unchanged.

     This option affects options that expect path name like --git-dir and --work-tree in that their interpretations of the path
     names would be made relative to the working directory caused by the -C option. For example the following invocations are
     equivalent:

         git --git-dir=a.git --work-tree=b -C c status
         git --git-dir=c/a.git --work-tree=c/b status
```
