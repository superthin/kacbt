#!/bin/bash
hugo server -D --renderStaticToDisk --baseURL=https://khoancatbetong.com/ --appendPort=false
git add .
git commit -m "Pubush new post today"
git push --force --set-upstream origin main
