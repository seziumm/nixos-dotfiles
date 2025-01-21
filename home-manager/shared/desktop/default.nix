{ pkgs, ...}:

{
   imports = [
     ./waybar.nix
   ];

   # hyprland 
   home.file.".config/hypr/hyprland.conf" = {
     force = true;
     text = builtins.readFile ./hyprland.conf;
   };

   # hyprpaper 

   home.file.".config/hypr/hyprpaper.conf" = {
     force = true;
     text = builtins.readFile ./hyprpaper.conf;
   };


   # mpv

   home.file.".config/mpv/mpv.conf" = {
     force = true;
     text = builtins.readFile ./mpv.conf;
   };

}
