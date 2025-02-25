#!/usr/bin/env bash
# Script to list recent files and open nvim using fzf

list_oldfiles() {
    # Get the oldfiles list from Neovim
    local oldfiles=($(nvim -u NONE --headless +'lua io.write(table.concat(vim.v.oldfiles, "\n") .. "\n")' +qa))
    
    # Filter invalid paths or files not found
    local valid_files=()
    for file in "${oldfiles[@]}"; do
        if [[ -f "$file" ]]; then
            valid_files+=("$file")
        fi
    done
    
    # Use fzf to select from valid files
    local files=($(printf "%s\n" "${valid_files[@]}" | \
        grep -v '\[.*' | \
        fzf --multi \
        --preview 'bat -n --color=always --line-range=:500 {} 2>/dev/null || echo "Error previewing file"' \
        --height=70% \
        --layout=default \
        --bind 'ctrl-J:down,ctrl-K:up' \
        --color 'fg:#ebdbb2,bg:#272727,hl:#fabc2e,fg+:#ebdbb2,bg+:#655b53,hl+:#fabc2e' \
        --color 'info:#83a597,prompt:#a89983,spinner:#fabc2e,pointer:#83a597,marker:#d65c0d,header:#928373'))
    
    # If files were selected
    if [[ ${#files[@]} -gt 0 ]]; then
        local first_file="${files[0]}"
        local dir
        dir=$(dirname "$first_file") # Extract the directory of the first selected file
        
        pushd "$dir" > /dev/null || return  # Save current dir and move to new one
        nvim "${files[@]}"                  # Open Neovim in the selected dir
        popd > /dev/null                     # Return to the original dir
    fi
}

# Call the function
list_oldfiles "$@"
