{ config, lib, pkgs, ... }:

{
  home.file = {

    "Documents/.keep".text = "";
    "Downloads/.keep".text = "";
    
    "Media/.keep".text = "";
    "Media/Videos/.keep".text = "";
    "Media/Pictures/.keep".text = "";
    "Media/Pictures/screenshots/.keep".text = "";
    "Media/Pictures/wallpapers/.keep".text = "";
    "Media/Pictures/photos/.keep".text = "";
    "Media/Music/.keep".text = "";
    
    "Projects/.keep".text = "";
    
    "scripts" = {
      source = ./scripts;  # Legge dalla directory scripts locale
      recursive = true;    # Copia ricorsivamente tutti i file
      executable = true;   # Rende i file eseguibili
    };
    
    "Media/Pictures/wallpapers" = {
      source = ./wallpapers;  # Legge dalla directory wallpapers locale
      recursive = true;    # Copia ricorsivamente tutti i file
    };
    
  };
  
  # # Configurazione XDG directories
  # xdg.userDirs = {
  #   enable = true;
  #   createDirectories = true;
  #   documents = "${config.home.homeDirectory}/Documents";
  #   download = "${config.home.homeDirectory}/Downloads";
  #   videos = "${config.home.homeDirectory}/Media/Videos";
  #   music = "${config.home.homeDirectory}/Media/Music";
  #   pictures = "${config.home.homeDirectory}/Media/Pictures";
  #   desktop = "${config.home.homeDirectory}/Desktop";
  #
  #   publicShare = ""; # @TODO fix this 
  #   templates = "";
  # };
}
