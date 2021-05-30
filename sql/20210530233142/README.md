# Use `BETWEEN` to check strings started with on MySQL

So I know I can use a regular expression to do this:

`SELECT name FROM table WHERE name REGEXP '[^j-z]';`

But I also can use `BETWEEN` keyword

`SELECT name FROM table WHERE name BETWEEN 'j' AND 'z';`
