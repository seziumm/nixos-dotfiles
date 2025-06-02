#!/usr/bin/env bash

SEARCH_PATH="${1:-.}"
EDITOR_CMD="${EDITOR:-nvim}"

# Seleziona file o cartelle
selected_files=$(fd . "$SEARCH_PATH" \
  | fzf --multi \
        --preview 'bat -n --color=always --line-range=:500 {} 2>/dev/null || echo "Error previewing file"' \
        --height=70% \
        --layout=default \
        --bind 'ctrl-J:down,ctrl-K:up' \
        --color 'fg:#ebdbb2,bg:#272727,hl:#fabc2e,fg+:#ebdbb2,bg+:#655b53,hl+:#fabc2e' \
        --color 'info:#83a597,prompt:#a89983,spinner:#fabc2e,pointer:#83a597,marker:#d65c0d,header:#928373')

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
