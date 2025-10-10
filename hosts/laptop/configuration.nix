{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./boot.nix
    ./local-packages.nix
    ./intel-drivers.nix
    ./kernel.nix
    ../../nixos/modules
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;

  # Load nvidia driver for Xorg and Wayland
  services.xserver.enable = true;
  services.xserver.videoDrivers = ["intel"];
}

