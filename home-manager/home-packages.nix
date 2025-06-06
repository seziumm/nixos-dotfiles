{ pkgs, ... }: {

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowBroken = true;

  home.packages = with pkgs; [
    (pkgs.writeShellScriptBin "codium-chrome" ''
     export CHROME_EXECUTABLE=${pkgs.chromium}/bin/chromium
     exec ${pkgs.vscodium}/bin/codium "$@"
     '')
    vscodium-fhs
    android-studio-full


    gtk4

    ags

    flutter332


    spotify
    telegram-desktop
    discord

    # browser
    brave
    chromium

    libreoffice

    # games
    prismlauncher

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


    # screenshot
    grim
    slurp
    waybar


  ];
}
