# `jq` parse ms to date

Divide by one thousand and use the filter `strftime`.

```bash
jq -r '.items[] | (.msDate / 1000 | strftime("%Y-%m-%d"))
```
