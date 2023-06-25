# Crontab jobs are removed when `usermod -l`

I changed the username of my raspberry pi, ubuntu server using:

```bash
usermond -l new_username old_username
```

That resulted on losing all my cron job configurations.
