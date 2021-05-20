# Understanding `#!/bin/bash`

So until now I was making some shell scripts and using *«Shebang»*:
`#!/bin/bash` at the start of all scripts.

But didn't understand why is that. Then I used `type` and `which`
commands with `$SHELL` and this show me the path to `/bin/bash`.

So I did an experiment with `which php`. It showed me the path to
`/usr/bin/php`. What would happen if I make an executable script with
that header? I just made a hello world:

```php
#!/usr/bin/php
<?php
  echo "Hello World!\n"
?>
```

I found that way that works. I will not use php for scripting but it is
nice I could understand more about bash just messing with commands and
php.
