{ pkgs, ... }:
{
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";
    image = ../../home-manager/modules/wallpapers/mountains.jpg;

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
      applications = 12;
      popups = 10;
      desktop = 10;
    };

    targets = {
      fzf.enable = true;
      gtk.enable = true;
      hyprland.enable = true;
      kitty.enable = true;
      mpv.enable = true;
      neovim.enable = true;
      qt.enable = true;
      tmux.enable = true;
      vim.enable = true;
      waybar.enable = true;
      wofi.enable = true;
      zathura.enable = true;
    };
  };
}
