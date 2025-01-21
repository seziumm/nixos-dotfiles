{ pkgs, ... }:

{

  # activate zsh shell

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    history.size = 1000;
    history.path = "$HOME/.zshistory";


     initExtra = ''
     bindkey -v

      # conflict with tmux

      # Unbind Ctrl+Shift+H (backward-delete-char)
      bindkey -r '\e[1;6H'

      # Unbind Ctrl+Shift+L (clear-screen)
      bindkey -r '\e[1;6L'

      # Unbind Ctrl+Shift+J (down-arrow search or custom binding)
      bindkey -r '\e[1;6J'

      # Unbind Ctrl+Shift+L (again)
      bindkey -r '\e[1;6L'

      # Bind Ctrl + P to previous history search
      bindkey '^P' history-search-backward

      # Bind Ctrl + N to next history search
      bindkey '^N' history-search-forward

      # Bind Ctrl + Backspace to remove the last word
      bindkey '^H' backward-kill-word

      # autocomplete with shift + tab
      bindkey '^[[Z' vi-forward-char
     '';

    oh-my-zsh = {
      enable = true;
      theme = "agnoster";
    };
    shellAliases = {

      cp = "cp -v";
      rm = "rm -v";

      rebuild-nixos = "sudo nixos-rebuild switch";
      rebuild-home = "home-manager switch";
    };
  };

}
