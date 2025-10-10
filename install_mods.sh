#!/usr/bin/env zsh

# Extract URLs from JSON and run packwiz modrinth install for each
while read -r url; do
    echo "Installing: $url"
    cd Cogo && packwiz modrinth install "$url" </dev/tty
    cd ..
done < <(jq -r '.[].url' Cogo.json)
