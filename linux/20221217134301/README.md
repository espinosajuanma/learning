# `jq` - Use `| @tsv` to get Tab Separated Values

Use the filter to collect array of values. In this case I am storing the
bot id and bot name of AWS Lex. ` | [.botId, .botName]`. Then I pipe it
to `@tsv` to get a tab separated values.

I found this really useful to iterate over using a while and `IFS` in a
bash script. I have to look into further but it is working now.

```bash
aws lexv2-models list-bots | jq -r '.botSummaries[] | [.botId, .botName] | @tsv' \
    | while IFS=$'\t' read -r botId botName; do
    echo "Setting [$botName] with id [$botId]"
done
```
