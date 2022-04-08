# GPG Keys

## What is GPG

It is an implementation of PGP (Pretty Good Privacy). It use a system of
`public` and `private` keys for the encryption and signing of messages
or data.

## Why use it on Git/GitHub

To understand this I first had to learn what is the difference with a
SSH key, which was the only one I use to authenticate with GitHub.

GPG key doesn't replace this authentication. SSH key is the one I want
for connectivity and authentication method. We use it to have access in
GitHub for the moment.

But GPG is used to verify the code in the repository, we make a
authentic commit, tag or release that other people can validate that
we did it.

> TL;DR: SSH for access and GPG for authenticity.

## Managing GPG Keys

- Make sure you have it installed `gpg --help`
  - If not `sudo apt-get install gnupg`
- Use `gpg --full-generate-key` to generate a key
  - `RSA` is by default
  - `4096` bits long is more safety
- Use `gpg --list-keys` to see your keys
- Edit it with `gpg --edit-key your@mail.com`
- Change passphrase `gpg --paswd your@mail.com`
- Export public key `gpg --export --armor --output file.gpg.pub your@mail.com`
  - Then you can `cat file.gpg.pub` or copy content

## Config GPG agent to cache passphrase

- `vim ~/.gnupg/gpg-agent.conf`

```
default-cache-ttl 604800
max-cache-ttl 604800
```

## Set GPG Sign by default on Git

Example of a plain `~/.gitconfig` file

```
[user]
	name = FirstName LastName
	email = your@mail.com
	signingkey = your@mail.com

[init]
	defaultBranch = main

[commit]
	gpgsign = true

[tag]
	gpgSign = true
```

## Set GPG on GitHub

- Go to [Settings](https://github.com/settings/keys)
- Click `New GPG key`
- Paste exported public key there

Next time you commit, tag or release something it will signed by this
key and have the `Verified` green tag.
