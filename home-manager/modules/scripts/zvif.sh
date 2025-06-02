#!/usr/bin/env bash

SEARCH_PATH="${1:-.}"
EDITOR_CMD="${EDITOR:-vim}"

# Cerca solo directory con fd --type d
selected_dirs=$(fd --type d . "$SEARCH_PATH" \
  | fzf --multi \
        --preview 'tree -C {} | head -100' \
        --height=70% \
        --layout=default \
        --bind 'ctrl-J:down,ctrl-K:up')

if [[ -z "$selected_dirs" ]]; then
  echo "Nessuna cartella selezionata."
  exit 0
fi

# Apri le directory selezionate nel tuo editor
# Aprire cartelle con editor può significare aprirle come progetto o semplicemente aprire una nuova sessione
# Qui apro tutte le directory selezionate come argomenti (alcuni editor supportano aprire directory)
$EDITOR_CMD $selected_dirs
