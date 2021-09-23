#!/usr/bin/env bash
# Filter Description Names
# Script to quickly grab the description names from the json
# files, so they can be added to the README
set -euo pipefail

# jq '.[][][2]' "$1" | uniq | xclip -selection c
DESCRIPTIONS=$(jq '.[][][2]' "$1" | uniq | perl -pe 's/\A/- /g')
echo "$DESCRIPTIONS"
