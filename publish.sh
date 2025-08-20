#!/bin/bash
current_time=$(date +"%H:%M:%S")
hugo server -D --renderStaticToDisk --baseURL=https://khoancatbetong.com/ --appendPort=false
cd public
sed -i 's/<meta name="generator" content="Hugo 0\.147\.9">//g' index.html
find . -name "*.html" -exec sed -i 's/<script src="\/livereload\.js?mindelay=10\&amp;v=2\&amp;port=\&amp;path=livereload" data-no-instant defer><\/script>//g' {} \;
cd ..
git add .
git commit -m "Publishing new posts today $current_time"
git push --force --set-upstream origin main
