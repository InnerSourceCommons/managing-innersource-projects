#!/bin/bash

# Initialize the graph
echo "graph TD" > obsidian_graph.mmd

# Loop through all markdown files in the directory
for file in *.md; do
    # Extract the title of the markdown file (assuming it's the first line)
    title=$(head -n 1 "$file" | sed 's/# //')
    
    # Extract all markdown links from the file
    grep -o '\[.*\](.*\.md)' "$file" | sed -E 's/\[.*\]\((.*)\.md\)/\1/' | while read -r link; do
        echo "$file"
        # Add the link to the graph
        echo "\"$title\" --> \"$link\"" >> obsidian_graph.mmd
    done
done

echo "Obsidian-style graph generated in obsidian_graph.mmd"
