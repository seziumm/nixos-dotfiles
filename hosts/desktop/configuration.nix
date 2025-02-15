{ config, pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./boot.nix
    ./hardware-configuration.nix
    ./local-packages.nix
    ../../nixos/modules
  ];

  environment.systemPackages = [ pkgs.nvidia-docker pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;







}

