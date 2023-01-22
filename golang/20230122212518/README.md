# `hugo` - Quick start

## Install

```
go install -tags extended github.com/gohugoio/hugo@latest
```

Check installation

```
hugo version
```

### Completion

Generate a completion file and source it in your `.bashrc`

```
# Maybe there is a better way to do this
hugo completion bash > $HOME/.completion.hugo 
```

```
source "$HOME/.completion.hugo"
```

## Quick start

```
hugo new site website
cd website
git init
git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke themes/ananke
echo "theme = 'ananke'" >> config.toml
hugo server
```

> Note: Never used `git submodule` before. I'll have to learn that too
>
> **Documentation:**
>
> Clone the Ananke theme into the themes directory, adding it to your
> project as a Git submodule.

### Hugo server

The last command is to build and start a development server.

```
hugo new posts/my-first-post.md
```

Using this command create a new `./content/posts/my-first-post.md` file

```md
---
title: "My First Post"
date: 2022-11-20T09:03:20-08:00
draft: true
---

## Introduction

This is bold text, and this is emphasized text.

Visit the [Hugo](https://gohugo.io) website!
```
