{ pkgs, ... }: {

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowBroken = true;
  nixpkgs.config.android_sdk.accept_license = true;

  home.packages = with pkgs; [
    (pkgs.writeShellScriptBin "codium-chrome" ''
     export CHROME_EXECUTABLE=${pkgs.chromium}/bin/chromium
     exec ${pkgs.vscodium}/bin/codium "$@"
     '')
    vscodium-fhs

    gtk4
    postman

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
    wf-recorder
    pavucontrol


    # screenshot
    grim
    slurp
    waybar


  ];
}
