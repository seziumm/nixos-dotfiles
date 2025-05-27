{ pkgs, ... }: {
  gtk = {
    enable = true;
    theme = {
      name = "gruvbox-dark-gtk";
      package = pkgs.gruvbox-dark-gtk;

    };
    iconTheme = {
      name = "gruvbox-dark-gtk";
    };
    cursorTheme = {
      name = "bibata-cursors";
      package = pkgs.bibata-cursors;
    };
  };
               }
