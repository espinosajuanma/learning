# `for`, `until` and `seq` loops

## For loop

With `seq 1 10` from 1 to 10

```sh
#!/bin/sh
for i in $(seq 1 10); do
   echo "$i"
done
```

## Until

Start with 0, stop at 9

```sh
#!/bin/sh
i=0
until test "$i" -eq 10; do
    echo "$i"
    i=$((i+1))
done
```


