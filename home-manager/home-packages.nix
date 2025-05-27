{ pkgs, ... }: {

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowBroken = true;


  home.packages = with pkgs; [
    (pkgs.writeShellScriptBin "codium-chrome" ''
     export CHROME_EXECUTABLE=${pkgs.chromium}/bin/chromium
     exec ${pkgs.vscodium}/bin/codium "$@"
     '')
    # vscodium-fhs
    chromium
    # can be used with blocs in nixos version 25.5
    flutter332
    libreoffice


    temurin-bin-17 # jdk
    prismlauncher

    # imv
    mpv


# man utils
    man-pages
    man-pages-posix

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

    # bluetooth 
    bluetuith


   # sezium stuff
   gh
   git
   fzf
   fd # finder
   kitty
   oh-my-posh # set terminal theme
   brave
   wl-gammactl
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
  ];


  fonts.fontconfig.enable = true;


}
