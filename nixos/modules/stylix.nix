{pkgs, ...}:

{
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";

    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font";
      };

      sansSerif = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font";
      };

      serif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Serif";
      };
    };


    fonts.sizes = {
      terminal = 11;
      applications = 11;
      popups = 10;
      desktop = 10;
    };
   
    # Targets disponibili solo in NixOS
    targets = {
      chromium.enable = true;
      console.enable = true;
      grub.enable = true;
    };
  };
}

