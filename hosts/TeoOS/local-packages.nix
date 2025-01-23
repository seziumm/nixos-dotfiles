{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [

    # jetbrains.pycharm-professional
    # jre8
    # qemu
    # quickemu
  ];
}
