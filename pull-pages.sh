#!/bin/bash
# encoding: utf-8

set -e

git checkout master doc/guide/html
git checkout master doc/api

if [[ -e stylesheets ]]; then
  rm -R stylesheets
fi

if [[ -e images ]]; then
  rm -R images
fi

if [[ -e index.html ]]; then
  rm *.html
fi

if [[ -d api ]]; then
  rm -R api
fi

mv doc/guide/html/* .
mv doc/api .

git add .
git commit -a -m "publishing HTML documentation work"

git push github gh-pages