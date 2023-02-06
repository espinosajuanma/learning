# `jq` - Use ` | keys` to get array of object keys

```bash
jq -r '.items[0] | keys' file.json
```
