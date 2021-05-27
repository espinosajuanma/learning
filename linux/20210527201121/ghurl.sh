#!/bin/sh
git remote get-url --all origin | sed -e 's/git@github.com:/https:\/\/github.com\//' -e 's/\.git/\//'
