{ pkgs, ... }: {

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowBroken = true;

  home.packages = with pkgs; [
    (pkgs.writeShellScriptBin "codium-chrome" ''
     export CHROME_EXECUTABLE=${pkgs.chromium}/bin/chromium
     exec ${pkgs.vscodium}/bin/codium "$@"
     '')

    chromium
    flutter332
    libreoffice


    temurin-bin-17 # jdk
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
    wl-gammactl
    zathura
    zip
    zoxide # better cd
    bluetuith
    killall
    cava
    gcc
    bear


    # clipboard
    wl-clipboard

    # hyprland 
    hyprpaper
    brightnessctl




    # screenshot
    grim
    slurp
    waybar

    brave

  ];
}
