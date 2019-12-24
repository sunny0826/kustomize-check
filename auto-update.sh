#!/bin/bash

set -e

./kust-check check
git add .
git commit -am "travis automated update" || exit 0
git push  --quiet "https://${GITHUB_TOKEN}@${GH_REF}" master:master