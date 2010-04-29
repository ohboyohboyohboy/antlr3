#!/bin/bash
# encoding: utf-8

set -e

git checkout master doc/guide/html
# git checkout master doc/api

if [[ -e stylesheets ]]; then
  rm -R stylesheets
fi

if [[ -e images ]]; then
  rm -R images
fi

if [[ -e index.html ]]; then
  rm *.html
fi

mv doc/guide/html/* .

if [[ api/index.html -ot doc/api/index.html ]]; then
  rm -fR api
  cp -R ./doc/api ./api
fi


if [[ -f api/_index.html ]]; then
  mv api/index.html api/readme.html
  mv api/_index.html api/index.html
  files=$(find api -type f)
  ruby -i -pe 'gsub /\bindex\.html/, "readme.html"' -- $files
  ruby -i -pe 'gsub /\b_index\.html/, "index.html"' -- $files
fi

set +e

git add .
git commit -a -m "publishing HTML documentation work"

set -e

git push github gh-pages