# `tmux` - Get current session name

Use `tmux display-message -p '#S'` to get the current name of your tmux session.

This is going to be really handy to me so I can setup a way to load different environment variables depending in which session I am working on.

Take as example my `.bashrc` file

```bash
tmux_session="$(tmux display-message -p '#S')"
if [[ $tmux_session == "ClientA" ]]; then
  echo "Loading Client A environment variables"
  source "$HOME/.client_a`
fi
```

This is great so I can forget to source the variables manually and probably making mistakes.

I just have to remember to start a new session with that specified name. I can achieve that using an alias like:

```bash
alias clienta='tmux new -s ClientA'
```

