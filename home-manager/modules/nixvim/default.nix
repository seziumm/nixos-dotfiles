# see https://github.com/nix-community/nixvim
{
  programs.nixvim = {
    enable = true;

    imports = [
      ./options.nix
      ./plugins.nix
      ./keymaps.nix
    ];

    # extraPlugins = builtins.attrValues {
    #   inherit (pkgs.vimPlugins)
    #     friendly-snippets; # Snippets for luasnip
    # };
    colorschemes.gruvbox.enable = true;

    globals.mapleader = " ";


  };

}
