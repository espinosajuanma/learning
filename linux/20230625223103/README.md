# `tmux` - Change prefix on `.tmux.conf`

So I got used to the prefix `Ctrl+b` on my main machine.

But sometimes I want to use tmux inside another host machine connected with SSH.

I changed it in my Raspberry to be `Ctrl+a` with this lines in my `.tmux.conf` file.

```
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix
```
