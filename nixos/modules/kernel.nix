{ pkgs, ... }: {
  # boot.kernelPackages = pkgs.linuxPackages_zen;
boot.kernelPackages = pkgs.linuxPackages_6_1;
}
