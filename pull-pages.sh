#!/bin/bash
# encoding: utf-8

set -e

git checkout master doc/html

if [[ -e stylesheets ]]; then
  rm -R stylesheets
fi
if [[ -e images ]]; then
  rm -R images
fi
if [[ -e index.html ]]; then
  rm *.html
fi

mv doc/html/* .
git add .
git commit -a -m "committing work on HTML guide"

git push github gh-pages