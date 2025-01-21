{ pkgs, ...}:

{

  home.pointerCursor = {
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 30;
    gtk.enable = true;
  };

  gtk = {
    enable = true;
    font = {
      package = (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; });
      name = "JetBrains Mono Nerd Font Regular";
      size = 12;
    };
    # see also https://www.youtube.com/watch?v=m_6eqpKrtxk
    # iconTheme = {
    #   package = (pkgs.catppuccin-papirus-folders.override { flavor = "mocha"; accent = "peach"; });
    #   name  = "Papirus-Dark";
    # };
    theme = {
      package = pkgs.gruvbox-gtk-theme;
      name = "Gruvbox-Dark";
    };
  };

}
