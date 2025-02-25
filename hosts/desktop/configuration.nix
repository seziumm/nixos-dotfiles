{ config, pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./boot.nix
    ./nvidia.nix
    ./hardware-configuration.nix
    ./local-packages.nix
    ../../nixos/modules
    ./printer.nix
  ];

  environment.systemPackages = [ pkgs.nvidia-docker pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;







}

