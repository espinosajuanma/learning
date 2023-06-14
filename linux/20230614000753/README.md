# Setup timezone with `timedatectl`

## Check timezone config

```bash
timedatectl
```

## Check list of timezones

```bash
timedatectl list-timezones
```

### Change timezone

```bash
sudo timedatectl set-timezone America/Argentina/Buenos_Aires 
```

## Ensure other files

```bash
ls -l /etc/localtime
```

```bash
cat /etc/timezone
```

