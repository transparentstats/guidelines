#!/bin/sh

set -e

#[ -z "${GITHUB_PAT}" ] && exit 0
#[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "robot@transparentstatistics.org"
git config --global user.name "Robot"

git clone -b gh-pages https://${GITHUB_PAT}@github.com/chatchavan/guidelines.git book-output
cd book-output
cp -r ../_book/* ./
git add --all *
git commit -m"Update the book" || true
git push -q origin gh-pages
