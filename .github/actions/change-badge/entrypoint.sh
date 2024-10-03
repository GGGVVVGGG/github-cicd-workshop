#!/bin/bash
set -e

BADGE_COLOR=$1
README_FILE="README.md"

GREEN="![Test Status](https://img.shields.io/badge/tests-success-green)"
RED="![Test Status](https://img.shields.io/badge/https://img.shields.io/badge/tests-fail-red)"

if ["$BADGE_COLOR" == "green"]; then
    sed -i "3s|.*|$GREEN|" $README_FILE
else
    sed -i "3s|.*|$RED|" $README_FILE

git config --global user.name "github-actions[bot]"
git config --global user.email "github-actions[bot]@users.noreply.github.com
git add $README_FILE
git commit -m "Updating badge color to $BADGE_COLOR || echo "No changes to commit"
git push