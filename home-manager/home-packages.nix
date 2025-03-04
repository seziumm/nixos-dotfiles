{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowBroken = true;


  home.packages = with pkgs; [
    temurin-bin-17
    prismlauncher

    # imv
    mpv


    # CLI utils
    brightnessctl

    ripgrep

    unzip
    zip


    wget
    wl-clipboard
    # wtype

    # Coding stuff
    # nodejs
    # python311

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    hyprpaper

    # Other
    # bemoji
    # nix-prefetch-scripts



   # sezium stuff
   gh
   git
   fzf
   fd # finder
   kitty
   oh-my-posh # set terminal theme
   brave
   wl-gammactl
   vim-full
   fastfetch
   zoxide # better cd


   grim
   slurp
   waybar

   cava

# @TODO: remove these packages
   gcc
   bear

   zathura
   (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];

  fonts.fontconfig.enable = true;


}
