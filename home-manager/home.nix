{ config, pkgs, ... }: 


{

  imports = [
    ./shared
  ];


  home = {
    username = "sezium";
    homeDirectory = "/home/sezium";
    stateVersion = "24.11";

  };
  
  



}
