{ pkgs, ... }: {

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowBroken = true;

  home.packages = with pkgs; [

    telegram-desktop


# utils
    gcc
    cmake
    bear
    gnumake
# needed in nvim

    wiremix # audio controller

    # flutter dev
    code-cursor-fhs
    chromium
    openjdk21

    discord
    obs-studio


    playerctl # needed tho show lock screen current song and other stuff
    wofi-power-menu

    xournalpp
    gnome-calculator

    xfce.xfconf # needed to customize thunar
    gvfs # Mount, trash, and other functionalities
    xfce.thunar-volman
    xfce.tumbler # Thumbnail support for images
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-dropbox-plugin

    #send files between devices
    localsend

    # gtk4


    # browser
    brave

    libreoffice

    # games
    prismlauncher

    # minecraft

    # CLI utils
    fastfetch
    fd # finder
    fzf
    btop
    gh
    git
    lazygit
    github-desktop
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
    perf


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
