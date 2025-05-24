{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./boot.nix
    ./local-packages.nix
    ./intel-drivers.nix
    ./kernel.nix
    ../../nixos/modules
    ../../nixos/modules/fonts.nix
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}

