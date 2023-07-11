# Private repos and GitHub SSH Config

So, one of the projects I am working on now it has a dependency in a github private repository. They gave me access but still my `go run .` or `go get .` commands throws an error saying that it couldn't access to download that dependency.

Go it was trying to use the HTTPS authentication method which I have not configured (and don't want to). So I investigate and you can add this lines in your `$HOME/.gitconfig` file to use SSH credentials instead.

```
[url "ssh://git@github.com/"]
  insteadOf = https://github.com/
```
