{ pkgs, ... }:
{
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
    # @TODO fix oh-my-posh theme not being automatic
    # @TODO fix tmux

    image = ../../home-manager/modules/wallpapers/flower.png;


    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };

    opacity = {
      applications = 1.0;
      terminal = 0.95;
      desktop = 1.0;
      popups = 1.0;
    };

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
      yazi.enable = true;
      kitty.enable = true;
      mpv.enable = true;
      neovim.enable = true;
      qt.enable = true;
      tmux.enable = true;
      nixcord.enable = true; # discord
      spotify-player.enable = true;
      vim.enable = true;
      waybar.enable = true;
      wofi.enable = true;
      zathura.enable = true;
    };
  };
}
