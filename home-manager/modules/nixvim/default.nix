# see https://github.com/nix-community/nixvim
{ pkgs, inputs, lib, ... }:
{

  programs.nixvim = {
    enable = true;

    imports = [
      ./options.nix
      ./plugins.nix
      ./keymaps.nix
    ];
    globals.mapleader = " ";

    lsp.keymaps = [
    { key = "gd"; lspBufAction = "definition"; }
    { key = "gD"; lspBufAction = "references"; }
    { key = "gt"; lspBufAction = "type_definition"; }
    { key = "gi"; lspBufAction = "implementation"; }
    { key = "K";  lspBufAction = "hover"; }

    {
      key = "<leader>k";
      action.__raw = "function() vim.diagnostic.jump({ count=-1, float=true }) end";
    }
    {
      key = "<leader>j";
      action.__raw = "function() vim.dianostic.jump({ count=1, float=true }) end";
    }
    { key = "<leader>lx"; action = "<CMD>LspStop<Enter>"; }
    { key = "<leader>ls"; action = "<CMD>LspStart<Enter>"; }
    { key = "<leader>lr"; action = "<CMD>LspRestart<Enter>"; }
    ];
  };

}
