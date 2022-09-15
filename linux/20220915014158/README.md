# Basic `ed` - Command line editor

## Creating a file

```
ed filename.md
```

This command will prompt:

```
filename.md: No such file or directory

```

To insert a line of text we have to enter the "insert" mode typing `a`
command inside `ed`. We need to write one line at the time without
possibility to edit the previous ones.

Once we finish writing the text we need to back to the "command" mode
typing a period `.`.

Then we can save the file sending the `w` (write) command and finally
the quit command `q`. We will have a prompt like this

```
a
Hello World!
.
w
13
q
```

In this case the number "13" is the amount of bytes of that file.

## Customizing the prompt

Now it seems difficult to understand when we are in each mode: command
and insert. We can set a prompt with the `-p` parameter.

```
ed -p ':' filename.md
```

If we have some kind of error ed is going to show us only a question
mark `?` for a more helpful information we can use the `H` command.

## Reading the file

To read all the file we need to use the command `,p`.

To read and get line numbers use `,n`

To read line by line we can just send the number of the line we need to
read: `1`, `2`...

To print a range of lines we can use `3,8p` or even `3,8n` if we want
those numbered lines.

## Current line

To know in which line are we, we can use `p` to print the current line
or `n` to print the numbered line and text.

To append a line we used `a` command, but if we want to input text
before the line we are currently in we can use the `i` command.

## Changing lines

We can use the command `c` for change a line. For example `1c` will make
us to change the first line for a new one.

## Deleting lines

To remove lines we use the command `d`. For example to delete line
number two we say `2d`

## Undo command

We only have one history back of changes tu undo our changes. For this
use the command `u`.

## Copy, Pasting and Moving lines

To copy a line we use the command `t`. And we need to tell the target
position of that line. For example: `3t0` will copy the line 3 and paste
it in the position 0.

In a similar way the move (m) command works but it is more like cutting
and pasting. Using `1m2` we can move the line one to the second
position.

## Searching through lines

As vim to search a word or something we can use the slash command `/`.

But this will prompt us the first occurrence of the query. We will have
to repeat the command for the next occurrence and so on.

Searching `/World`. Or even a using regular expressions.
