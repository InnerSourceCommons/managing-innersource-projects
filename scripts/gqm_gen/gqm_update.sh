#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <path-to-new-mermaid-markdown-file> <path-to-exising-use_gqm-markdown-file>"
    exit 1
fi

# File paths
NEW_MERMAID_MARKDOWN_FILE="$1"
EXISTING_USE_GQM_MARKDOWN_FILE="$2"

# Check if the new content file exists
if [ ! -f "$NEW_MERMAID_MARKDOWN_FILE" ]; then
    echo "Error: New mermaid markdown file not found at $NEW_MERMAID_MARKDOWN_FILE"
    exit 1
fi

# Check if the markdown file exists
if [ ! -f "$EXISTING_USE_GQM_MARKDOWN_FILE" ]; then
    echo "Error: Existing use_gqm markdown file not found at $EXISTING_USE_GQM_MARKDOWN_FILE"
    exit 1
fi

# The pattern to match the mermaid block
START_PATTERN='```mermaid'
END_PATTERN='```'

# Replace the entire mermaid block including the delimiters
sed -e "/$START_PATTERN/,/$END_PATTERN/{
    /$START_PATTERN/{
        r $NEW_MERMAID_MARKDOWN_FILE
        d
    }
    /$END_PATTERN/d
    d
}" "$EXISTING_USE_GQM_MARKDOWN_FILE"
