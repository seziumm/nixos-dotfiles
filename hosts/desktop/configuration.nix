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
    ../../nixos/modules/fonts.nix
  ];
  nixpkgs.config = { allowBroken = true; allowUnfree = true; }
  ;

  environment.systemPackages = [ pkgs.nvidia-docker pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;

# used in github desktop
  services.gnome.gnome-keyring.enable = true;

  programs.seahorse.enable = true;  # Optional GUI to manage keys





}

