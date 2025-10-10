{ pkgs, ... }: {

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowBroken = true;

  home.packages = with pkgs; [
    (pkgs.writeShellScriptBin "codium-chrome" ''
     export CHROME_EXECUTABLE=${pkgs.chromium}/bin/chromium
     exec ${pkgs.vscodium}/bin/codium "$@"
     '')


    playerctl # needed tho show lock screen current song and other stuff
    wofi-emoji
    wofi-power-menu
    wofi-pass

    flutter
    vscodium


    xournalpp
    gnome-calculator
    pavucontrol

    xfce.thunar
    xfce.thunar-volman
    xfce.thunar-archive-plugin
    xfce.thunar-dropbox-plugin

    #send files between devices
    localsend

    obs-studio

    gtk4

    ags

    # backend 
    xdg-desktop-portal
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    github-desktop
    spotify
    telegram-desktop
    discord

    # browser
    brave
    chromium

    libreoffice

    # games
    prismlauncher

    minecraft
    mesa
    libGL


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



    # hyprland 
    hyprpaper
    brightnessctl

    wl-clipboard
    wl-gammactl
    wf-recorder


    # screenshot
    grim
    slurp
    waybar


  ];


}
