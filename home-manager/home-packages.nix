{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    imv
    mpv

    # Desktop apps
    # obs-studio 
    # obsidian
    # teams-for-linux
    # telegram-desktop
    # vesktop

    # CLI utils
    brightnessctl
    # cliphist
    # ffmpeg
    git-graph

    ripgrep
    unzip

    wget
    wl-clipboard
    wtype
    zip

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
   fzf
   kitty
   brave
   wl-gammactl
   vim-full
   fastfetch

   grim
   slurp
   waybar

   cava
   gcc
   git
   zathura
   # neovim

   # lua-language-server # needed in nvimchad
   # clang-tools         # still needed in nvimchad (lsp)

   (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];

  fonts.fontconfig.enable = true;


}
