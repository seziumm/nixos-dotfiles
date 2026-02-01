{pkgs, lib, ...}:
{

  imports = [
    ./telescope.nix
  ];

  plugins = {


    indent-blankline = {
      enable = true;

      settings.exclude.buftypes = [
        "terminal" 
# "nofile"
# "quickfix"
# "prompt"
      ];
    };
    luasnip = {
      enable = true;
      fromVscode = [
      {}
      ];
    };
    friendly-snippets.enable = true;

    tmux-navigator.enable = true;

    web-devicons.enable = true;

    # use g? in nvim-tree to open mappings
    nvim-tree = {
        enable = true;
        openOnSetup = true;

        settings  = {
            auto_reload_on_write = true;
            renderer.indent_markers.enable = true; # render | in nvim tree like indent-blankline
                view = {
                    number = true;
                    relativenumber = true;
                    side = "left";
                };
        };
    };

# syntax and look

    treesitter = {
# already all installed. If not, run: TSInstall all
      enable = true;
    };



# autocomplition
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings.sources = [
      { name = "nvim_lsp"; }
      { name = "path"; }
      { name = "buffer"; }
      { name = "luasnip";}
      ];


      settings.mapping =  {
# "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<CR>" =
          ''
          cmp.mapping.confirm({
              behavior = cmp.ConfirmBehavior.Replace,
              select = true
              })
        '';

        "<Tab>" =
          ''
          function(fallback)
          local luasnip = require('luasnip')
          if cmp.visible() then
            cmp.select_next_item()
              elseif luasnip.expandable() then
              luasnip.expand()
              elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
          else
            fallback()
              end
              end
              '';

        "<S-Tab>" =
          ''
          function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
              end
              end
              '';

        modes = "i, s";
      };
    };
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;
    cmp-buffer.enable = true;
    cmp_luasnip.enable = true;

    lsp = {
        enable = true;

        servers = {
            clangd = {
                enable = true;

                cmd = [
                    "clangd"
                        "--background-index"
                        "--clang-tidy"
                        "--query-driver=/home/sezium/.nix-profile/bin/c++"
                ];
            };

            cmake.enable = true;

            nixd.enable = true;
            bashls.enable = true;
            asm_lsp.enable = true;

# web
            cssls.enable = true;
            html.enable = true;
            jsonls.enable = true;

# other
            java_language_server.enable = true;
            pylsp.enable = true;
            lua_ls.enable = true;

            rust_analyzer = {
                enable = true;
                installCargo = true;
                installRustc = true;
            };
        };
    };

    comment.enable = true;
    lualine.enable = true;

  };


}
