#!/usr/bin/env bash

###########
# author: Deepankar Chakroborty
# https://cv.dchakro.com
# Leave feedback: https://github.com/dchakro/OnedriveDirectLink
#
# Software provided as is without warranty.
###########


# Generate direct download URLs from files on Onedrive.

# Only supports links generated with the "Embed" option.
# Format: https://onedrive.live.com/embed?..........
# See Example.txt for details



INPUT_FILE="./Example.txt"
OUTPUT_FILE="./direct_links.txt"

grep -Eo '^#.+|src="[^\"]+"' ${INPUT_FILE} | sed "s/src=//g" | sed 's/"//g' | sed 's/embed/download/g' >| ${OUTPUT_FILE}
