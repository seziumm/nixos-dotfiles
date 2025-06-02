#!/usr/bin/env bash

SEARCH_PATH="${1:-.}"
EDITOR_CMD="${EDITOR:-nvim}"

# Seleziona file o cartelle
selected_files=$(fd . "$SEARCH_PATH" \
  | fzf --multi \
        --preview 'bat -n --color=always --line-range=:500 {} 2>/dev/null || echo "Error previewing file"' \
        --height=70% \
        --layout=default \
        --bind 'ctrl-J:down,ctrl-K:up')

# Esci se non selezionato nulla
if [[ -z "$selected_files" ]]; then
  echo "No files selected."
  exit 0
fi

first_file=$(echo "$selected_files" | head -n1)
dir_to_cd=$(dirname "$first_file")

cd "$dir_to_cd" || { echo "Failed to enter directory $dir_to_cd"; exit 1; }

files_to_open=$(echo "$selected_files" | xargs -n1 basename)

$EDITOR_CMD $files_to_open
