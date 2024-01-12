# Use interactive mode to use a calculator `bc` with `-i`

I've been using `bc` to make calculations but I wrapped the logic inside an script named `calc`:

```bash
#!/bin/bash
exp="$*"
echo "$exp" | bc
```

But this is getting cumbersome because sometimes when I am doing math I want to keep making operations after the first one. With my current setup I have to write `calc` and wrap the operation inside single quotes, and that is ok if I want to make only one calculation, but almost never the case.

I hate to bring up the ubuntu calculator because I got used a lot to the terminal and I don't like to open an app just to close it.

So I read the manual page of `bc` and it has an interactive mode which is great for my purpose. Just use `bc -i` and start typing operations. With each enter I got the result and I am still inside the application to keep making calculations.

If you want to exit just write `quit`. I never had to use a mouse neither take off my eyes from my terminal.
