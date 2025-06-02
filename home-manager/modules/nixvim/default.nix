# see https://github.com/nix-community/nixvim
{

  programs.nixvim = {
    enable = true;

    viAlias = true;

    imports = [
      ./options.nix
      ./plugins.nix
      ./keymaps.nix
    ];

    globals.mapleader = " ";


  };

}
