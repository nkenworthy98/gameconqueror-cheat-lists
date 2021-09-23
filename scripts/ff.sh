#!/usr/bin/env bash
# Fix format
# Script to fix the json format that gameconqueror creates
# in order to make the files more readable
set -euo pipefail

FILE_TO_FIX="$1"
REFORMATTED_CONTENT=$(jq '.' "$FILE_TO_FIX")
echo "$REFORMATTED_CONTENT" > "$FILE_TO_FIX"
