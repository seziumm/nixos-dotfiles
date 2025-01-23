{ pkgs, lib, ... }:

let
  # fine-cmdline = pkgs.vimUtils.buildVimPlugin {
  #   name = "fine-cmdline";
  #   src = pkgs.fetchFromGitHub {
  #     owner = "VonHeikemen";
  #     repo = "fine-cmdline.nvim";
  #     # git ls-remote https://github.com/VonHeikemen/fine-cmdline.nvim.git main
  #     rev = "dd676584145d62b30d7e8dbdd011796a8f0a065f";
  #     # Use this to get sha256
  #     # sha256 = pkgs.lib.fakeSha256;
  #     sha256 = "w9wwjClkOWk3wCgEiZIFLZRJ/gAfX38x2LnVRaelKD8=";
  #   };
  # };

in
{
  programs.neovim = {

    enable = true;
    defaultEditor = true;

    # Install plugins
    # Search for them here
    # https://search.nixos.org/packages?from=0&size=50&sort=relevance&type=packages&query=vimPlugins
    # https://github.com/m15a/nixpkgs-vim-extra-plugins
    # https://github.com/NixNeovim/NixNeovimPlugins

    plugins = with pkgs.vimPlugins; [
      nvim-tree-lua # Directory tree
      gruvbox-nvim # Gruvbox color theme
      vim-tmux-navigator # navigate in tmux and vim
    ];

    extraConfig = ''
      set tabstop=2
      set shiftwidth=2
      set expandtab

      set rnu
      set clipboard=unnamedplus

      inoremap { {}<Esc>i

      "inoremap ( ()<Esc>i
      "inoremap [ []<Esc>i
      "inoremap " ""<Esc>i

      nnoremap <C-N> <cmd>NvimTreeToggle<cr>
    '';

    extraLuaConfig = ''
      require("nvim-tree").setup()

      require("gruvbox").setup({
		      terminal_colors = true, -- add neovim terminal colors undercurl
		      undercurl = true,
		      underline = true,
		      bold = true,
		      italic = {
		      strings = true,
		      emphasis = true,
		      comments = true,
		      operators = false,
		      folds = true,
		      },
		      strikethrough = true,
		      invert_selection = false,
		      invert_signs = false,
		      invert_tabline = false,
		      invert_intend_guides = false,
		      inverse = true, -- invert background for search, diffs, statuslines and errors
		      contrast = "", -- can be "hard", "soft" or empty string
		      palette_overrides = {},
		      overrides = {},
		      dim_inactive = false,
		      transparent_mode = false,
      })
    vim.cmd("colorscheme gruvbox")


    '';
  };


}
