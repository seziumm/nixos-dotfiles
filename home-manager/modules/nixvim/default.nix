{
  imports = [
    ./options.nix
  ];

  programs.nixvim = {
    enable = true;

    colorschemes.gruvbox.enable = true;
    plugins.lualine.enable = true;
    plugins.nvim-tree.enable = true;
    plugins.web-devicons.enable = true;

      globals.mapleader = " ";
      # then keymaps
  };

}
