# `jq` pipes, length, `--arg`, string interpolation, join array

Today I made a script that `curl` an API of synonyms and print it. I
like to find synonyms when I write so I do not repeat the same word.

I will let this json file as example.

```json
{ "synonyms": [ { "synonym": "old" }, { "synonym": "aged" } ] }
```

I wanted to print `Synonyms of ancient (2): old, aged`

- Used `length` to get how many elements in array
- Assigned a variable with `length as $amount`
- Passed a local variable with `--arg "$1"`
- Concatenated variables with *«String interpolation»* `\($var)`
- Used `join(", ")` to merge elements of array

```sh
cat example.json | jq --arg word "$1" -r '.synonyms | length as $amount | map(.synonym) | "Synonyms of \($word) (\($amount)): " + join(", ")'
```

`jq` it is not easy at the beginning but I will keep learning by reading
docs and doing. It is going to be a nice tool to have on my toolbox.
