# Connect to wifi using `nmcli`

Like `nmtui` you need to install `network-manager` package.

```bash
sudo apt-get install network-manager
```

- Use `nmcli dev wifi` to locate the access points
- Use `nmcli device wifi connect [ACCESS_POINT_NAME] password [PASSWORD]`
