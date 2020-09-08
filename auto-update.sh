#!/bin/bash

set -e

./kust-check check
git clone https://github.com/sunny0826/kustomize-check.git
if [ ! -f "updateLog"]; then
    mv updateLog kustomize-check
    cd kustomize-check
    git add .
    git commit -am "travis automated update" || exit 0
    git push  --quiet "https://${GITHUB_TOKEN}@${GH_REF}" master:master
fi
