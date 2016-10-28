#!/bin/bash

set -o errexit

~/gocode/bin/hugo --theme=hugo_theme_emptysquare -d public/blog
cp -f static/* public/
netlify deploy -s emptysquare -p public