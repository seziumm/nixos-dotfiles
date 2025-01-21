{ config, lib, pkgs, ... }:

# use nmtui other than nmcli
{
  imports = [
    ./hardware-configuration.nix
  ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "TeoOS";
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  time.timeZone = "Europe/Rome";


	# flakes and stuff
	nix.settings.experimental-features = [ "nix-command" "flakes" ];


  # BLUETOOTH

  hardware.bluetooth.enable = true; # enables support for Bluetooth
  hardware.bluetooth.powerOnBoot = true; # powers up the default Bluetooth controller on boot


  # Using Bluetooth headsets with PulseAudio
  # To allow Bluetooth audio devices to be used with PulseAudio, amend /etc/nixos/configuration.nix as follows:

  # vedere se funziona senza
  # hardware.pulseaudio.enable = true;
  # hardware.bluetooth.enable = true;


  
  # Changing the default shell for all users
  # when adding a new shell, always enable the shell system-wide, even if it's already enabled in your home manager configuration
  # otherwise it won't source the necessary files.

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  # activating hyprland from here, cz it wont work. Can't do it on the home-manager
  programs.hyprland = {
    enable = true;
    xwayland.enable = true; # layer di compatibilita' per app che non usano wayland
  };

  #set the environment variable to set electron app to x11 rather than wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # Define a user account. Don't forget to set a password with ‘passwd’.
   users.users.sezium = {
     isNormalUser = true;
     extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user. #!!!!!!!!!!!!!!!!!!! RIMOSSO "input" nel set
     packages = with pkgs; [
     ];
   };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
   environment.systemPackages = with pkgs; [
     # fonts
    # nerdfonts.jetbrains-mono
     
     # NixOS 
     home-manager

     # Terminal Programs
     zsh
     kitty
     neovim 
     git
     tmux
     # like htop but better
     btop
     yazi


     # audio manager
     pavucontrol
     # audio visualizer
     cava

     # bluetooth
     blueman


     # Desktop Programs
     hyprland
     hyprpaper
     wl-clipboard
     wl-gammactl
     waybar
     slurp 
     wofi
     grim
     
     # look and gtk
     nwg-look

     fastfetch
     brave
     killall

     # video 
     mpv
     # dev
     gcc 
   ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];



   # set default shell when i use nixos shell commands:
   environment.shells = [ pkgs.zsh ];

   system.stateVersion = "24.11"; 
}

