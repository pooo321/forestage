#!/usr/bin/env bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__date="$(date +%x)"

cd "${__dir}/../client"
jekyll build
git pull origin master
git add .
git commit -m "Update data - auto push ${__date}"
git push origin master