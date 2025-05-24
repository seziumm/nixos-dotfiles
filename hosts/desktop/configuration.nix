{ pkgs, stateVersion, hostname, ... }:
{
  imports = [
    ./kernel.nix
    ./boot.nix
    ./nvidia.nix
    ./hardware-configuration.nix
    ./local-packages.nix
    ../../nixos/modules
    ./printer.nix
  ];
  nixpkgs.config = { allowBroken = true; allowUnfree = true; }
;

  environment.systemPackages = [ pkgs.nvidia-docker pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;







}

