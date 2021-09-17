# `tmux` exit, detach and list sessions

- Use `tmux ls` to see a list of sessions
- Use combination `Ctrl+B` and `D` to detach from current session
- Use `tmux attach -t {session_number}` to attach a session again
- Use `tmux rename-session -t {session_number} {new_name}` to rename
  a session
- Use `tmux new -s {new-name}` to create a session with name

> Flag `-t` is refered to `target`

- Exit and kill a current session using `exit`
- Kill a session using `tmux kill-session -t {session_name}`
