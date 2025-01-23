{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    gcc
    git
    yazi 
    neovim

    # jetbrains.pycharm-professional
    # jre8
    # qemu
    # quickemu
  ];
}
