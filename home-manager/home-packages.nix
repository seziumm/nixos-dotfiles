{ pkgs, ... }: {

  nixpkgs.config.allowUnfree = true;

  nixpkgs.config.allowBroken = true;

  home.packages = with pkgs; [
    (pkgs.writeShellScriptBin "codium-chrome" ''
     export CHROME_EXECUTABLE=${pkgs.chromium}/bin/chromium
     exec ${pkgs.vscodium}/bin/codium "$@"
     '')


    # Development
    gnumake
    bear
    gcc

    playerctl # needed tho show lock screen current song and other stuff
    wofi-power-menu

    xournalpp
    gnome-calculator
    pavucontrol

    xfce.thunar
    xfce.thunar-volman
    xfce.thunar-archive-plugin
    xfce.thunar-dropbox-plugin

    #send files between devices
    localsend

    gtk4

    github-desktop

    # browser
    brave

    libreoffice

    # games
    prismlauncher

    minecraft

    # CLI utils
    fastfetch
    fd # finder
    fzf
    btop
    gh
    git
    kitty
    man-pages
    man-pages-posix
    mpv
    oh-my-posh # set terminal theme
    ripgrep
    tree
    unzip
    wget
    zathura
    zip
    zoxide # better cd
    bluetuith
    killall
    cava
    gcc
    bear


    hyprpaper
    brightnessctl

    wl-clipboard
    wf-recorder

    # screenshot
    grim
    slurp
    waybar

  ];


}
