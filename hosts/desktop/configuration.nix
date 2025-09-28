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

  nixpkgs.config = {
    allowBroken = true;
    allowUnfree = true;
  };

  environment.systemPackages = [
    pkgs.nvidia-docker
    pkgs.home-manager
  ];

  networking.hostName = hostname;

  # 🔑 apre le porte usate da LocalSend
  networking.firewall.allowedTCPPorts = [ 53317 ];
  networking.firewall.allowedUDPPorts = [ 53317 ];

  # 🔑 utile per il discovery (LocalSend usa broadcast/mDNS)
  services.avahi.enable = true;
  services.avahi.nssmdns = true;

  system.stateVersion = stateVersion;

  # usato in github desktop
  services.gnome.gnome-keyring.enable = true;
  programs.seahorse.enable = true;  # Optional GUI to manage keys
}
