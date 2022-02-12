# Use `| less` to read long prompts

Sometimes I am consuming an API and it brings a really long JSON string.
I could filter some results with `jq` program. But when I want to read
the full data it can be easier to pipe it to `less` and use `vim`
keybindings to read from top to bottom or even make a search.

```bash
curl -s -S https://someapi.com/data | jq -C | less -R
```

- `jq -C` - The `-C` flag is to force color to a pipe
- `less -R` - The `-R` flag is to keep raw output

- To quit and stop reading use `q`.
- To navigate up and down use `k` and `j`
