# Run script on reboot with cronjob

I wanted to have a notification when my Raspberry Pi with ubuntu server shutdown and awake again. It was so easy with `crontab -e`.

Add a cron expression that looks like this

```
@reboot script-name.sh
```
