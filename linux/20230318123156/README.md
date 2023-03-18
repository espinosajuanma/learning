# gpg-agent forwarding: inappropriate ioctl for device

To test the GPG key:

```bash
echo "test" | gpg --clearsign
```

My solution was to set the environment variable `GPG_TTY` to the file
name of the terminal connected to the standard input (tty).

```bash
export GPG_TTY="$(tty)"
```
