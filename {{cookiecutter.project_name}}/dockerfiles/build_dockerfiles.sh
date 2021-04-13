#!/bin/bash
# =============================================================================
# This script builds a Dockerfile for every .m4 file in the dockerfiles/ folder
# =============================================================================

current_directory=$(dirname "$0")

for file in $current_directory/*.m4; do
    [ -f "$file" ] || break
    output_file="${file%.*}"
    m4 -I $current_directory $file > $output_file
done
