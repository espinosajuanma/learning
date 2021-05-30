# Send a command to vim using `vim -c`

I 'usually' have `set spell` enable and is really useful when I write
notes in english. But when I write spanish notes it is really annoying
so I had to use `set nospell` everytime I open a new vim.

I found out I can use `vim -c "set nospell" filename`. I just had to
make an alias or an script kinda like `alias vis='vim -c "set nospell"'`
and it's done.
