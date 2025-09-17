{
  programs.wofi = {
    enable = true;
    settings = {
      allow_markup = true;
      allow_images = true;
    };
  };

  home.file.".config/wofi/gruvbox.css".source = ./gruvbox.css;
}

