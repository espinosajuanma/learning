# Use `uuidgen` as random uuid generator

I just found out about this linux utility. Until now I was using a go
program to generate unique uuid. But that makes some of my scripts
dependant on have installed that.

Instead use `uuidgen` which is commonly installed on Linux systems.

This program have some options as create time-based uuid or even
hash-based. It would be nice to investigate further in case of need it.

```bash
man uuidgen
```
