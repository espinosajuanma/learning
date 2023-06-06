# Use `uptime` to check how long the system has been running

Until today I was using `neofetch` to check how long my computer was running. But there is a tool named `uptime` that does only that. I am going to start using it with the pretty flag on true.

## Normal output

`uptime` shows how long the system has been running, how many users are logged on and the system load averages.

```
 08:52:32 up 12 days, 22:13, 19 users,  load average: 2,40, 1,89, 1,55
```

## Pretty

I like more the output of the pretty flag `-p`.

```
up 1 week, 5 days, 22 hours, 14 minutes
```

## Since

But if you want to know the time the system started running you can use the since flag `-s`.

```
2023-05-24 10:38:46
```
