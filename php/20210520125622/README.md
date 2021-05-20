# [PHP] Differences between echo and print

Both functions show something on screen. But they are different.

You can call multiples strings with `echo`, instead with `print` you
just print the first one.

```php
<?php
  echo "First\n", "Second\n", "Third\n"; // ...

  print "First\n";
  print "Second\n";
  print "Third\n";
?>
```
