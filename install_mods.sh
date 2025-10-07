#!/usr/bin/env zsh

# Extract URLs from JSON and run packwiz modrinth install for each
jq -r '.[].url' 1.20.1.json | while read -r url; do
    echo "Installing: $url"
    cd Server && packwiz modrinth install "$url"
    cd ..
done
