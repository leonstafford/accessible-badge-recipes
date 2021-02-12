#!/bin/sh

# Updates PHP Pest code coverage stat within your README.md
#
# Pest: https://github.com/pestphp/pest
#

# requires PEST_COVERAGE var set within your GitHub Action workflow
if [ ! "$PEST_COVERAGE" ]; then
  echo "Missing PEST_COVERAGE variable in your GitHub Action" >&2 
  exit 1
fi

# replace code coverage line in README.md with Pest code coverage %
# note: expects gnu-sed
sed -i 's/Coverage:.*/Coverage: '"$PEST_COVERAGE"'/;s/\x1b\[[0-9;]*m//g' README.md

