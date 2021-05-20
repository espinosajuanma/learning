# [PHP] Install php without xampp

Like ten years ago I started to learn coding with PHP. Sometimes I
followed tutorials without understand what I was doing. In that time I
thought `xampp` was necessary to run a php server. It doesn't.

Now I wanted to install php again but without using that ugly tool. So this
are the steps I made on windows 10.

## Steps

1. Download the last version from [php
   website](https://windows.php.net/download/) `Zip`
1. Uncompress the zip file into `C:/php` folder (or whatever directory
   you want)
1. Add the path of that directory to the path environment variable.
1. Copy and rename the file `php.ini-development` to `php.ini`
1. Find and replace in that file the line `extension_dir =
   "C:\php\ext"` (path where the extensions -modules- are located)
1. Find and replace also the line `sendemail_from = name@domain.com`
   (use your email)

Done.

## Test script

Open `cmd` go to a directory with this script:

```php
<?php
  echo "Hello World!"
?>
```

Run `php filename.php` it should give back "Hello World!".

## Server

To run a server use this command: `php -S localhost:8080` in the root
directory of that php server with your `index.php` file inside. Open
`localhost:8080` in a browser.

### Credits

I checked out [Code Boxx's
video](https://www.youtube.com/watch?v=CC8HIT8P-kI) to install and
setup.
