{ pkgs, ...}:

{
  imports = [
    ./yazi
    ./zsh.nix
    ./neovim.nix
    ./tmux.nix
    ./gtk.nix
  ];

  home.file.".config/kitty/kitty.conf" = {
    force = true;
    text = builtins.readFile ./kitty.conf;
  };





}
