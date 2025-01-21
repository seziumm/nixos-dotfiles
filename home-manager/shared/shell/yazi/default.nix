{ pkgs, ...}:

{

   home.file.".config/yazi/yazi.toml" = {
     force = true;
     text = builtins.readFile ./yazi.toml;
   };

   home.file.".config/yazi/keymap.toml" = {
     force = true;
     text = builtins.readFile ./keymap.toml;
   };

   home.file.".config/yazi/theme.toml" = {
     force = true;
     text = builtins.readFile ./theme.toml;
   };

}
