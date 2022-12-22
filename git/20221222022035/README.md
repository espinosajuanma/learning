# Use `git diff -b` to see changes without indentation changes

Or `git diff --ignore-space-change`. This is useful because git will
track when you indent your code.

So today I wrapped several files into a function and also made little
changes inside the code. Without this flag it will show me that the
whole file changed because now the old code is one indent level to the
right.

Use `-b` option flag to ignore changes in amount of white-space.

> -b, --ignore-space-change
> Ignore changes in amount of whitespace. This ignores whitespace at
> line end, and considers all other sequences of one or more whitespace
> characters to be equivalent.
