{ pkgs, lib, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    # # Install plugins
    # plugins = with pkgs.vimPlugins; [
    #   nvim-tree-lua # Directory tree
    #   gruvbox-nvim # Gruvbox color theme
    #   vim-tmux-navigator # Navigate in tmux and vim
    #   nvim-web-devicons # Web icons for nvim-tree
    # ];
    #
    # extraConfig = ''
    #   set tabstop=2
    #   set shiftwidth=2
    #   set expandtab
    #   set nowrap
    #
    #   set rnu
    #   set clipboard=unnamedplus
    #
    #   inoremap { {}<Esc>i
    #
    #   nnoremap <C-N> <cmd>NvimTreeToggle<cr>
    # '';
    #
    # extraLuaConfig = ''
    #   -- Enable web icons
    #   require("nvim-web-devicons").setup({
    #     -- You can customize the icons here if needed
    #     override = {},
    #     default = true,
    #   })
    #
    #   -- Configure nvim-tree with web icons
    #   require("nvim-tree").setup({
    #     renderer = {
    #       icons = {
    #         web_devicons = {
    #           file = {
    #             enable = true,
    #             color = true,
    #           },
    #           folder = {
    #             enable = true,
    #             color = true,
    #           },
    #         },
    #         glyphs = {
    #           default = "", -- Default file icon
    #           symlink = "", -- Symlink icon
    #           folder = {
    #             default = "", -- Default folder icon
    #             open = "", -- Open folder icon
    #             empty = "", -- Empty folder icon
    #             empty_open = "", -- Empty open folder icon
    #             symlink = "", -- Symlink folder icon
    #             symlink_open = "", -- Symlink open folder icon
    #           },
    #           git = {
    #             unstaged = "", -- Unstaged git icon
    #             staged = "✓", -- Staged git icon
    #             unmerged = "", -- Unmerged git icon
    #             renamed = "➜", -- Renamed git icon
    #             untracked = "", -- Untracked git icon
    #             deleted = "", -- Deleted git icon
    #             ignored = "◌", -- Ignored git icon
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    #   -- Set Gruvbox color scheme
    #   require("gruvbox").setup({
    #     terminal_colors = true,
    #     undercurl = true,
    #     underline = true,
    #     bold = true,
    #     italic = {
    #       strings = true,
    #       emphasis = true,
    #       comments = true,
    #       operators = false,
    #       folds = true,
    #     },
    #     strikethrough = true,
    #     invert_selection = false,
    #     invert_signs = false,
    #     invert_tabline = false,
    #     invert_intend_guides = false,
    #     inverse = true,
    #     contrast = "",
    #     palette_overrides = {},
    #     overrides = {},
    #     dim_inactive = false,
    #     transparent_mode = false,
    #   })
    #   vim.cmd("colorscheme gruvbox")
    # '';
  };
}
