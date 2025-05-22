{pkgs, ...}:
{
  # Add the plugin using extraPlugins
    extraPlugins = with pkgs.vimPlugins; [
      flutter-tools-nvim
      dart-vim-plugin
      plenary-nvim  # Required dependency
      nvim-dap       # Debugger
      nvim-dap-ui    # Interfaccia grafica
    ];

    # Configure the plugin using extraConfigLua
    extraConfigLua = ''
      require("flutter-tools").setup({
        debugger = {
          enabled = true,
          runInTerminal = true,
        },
        widget_guides = {
          enabled = true,
        },
        closing_tags = {
          highlight = "ErrorMsg",
          prefix = "// ",
          enabled = true,
        },
        lsp = {
          color = {
            enabled = true,
            background = true,
            background_color = nil,
            virtual_text = true,
          }
        }
      })
    '';

    # Optional: Add key mappings
    keymaps = [
      {
        key = "<leader>fr";
        action = ":FlutterRun<CR>";
        options.desc = "Flutter Run";
      }
      {
        key = "<leader>fq";
        action = ":FlutterQuit<CR>";
        options.desc = "Flutter Quit";
      }
      {
        key = "<leader>fe";
        action = ":FlutterEmulators<CR>";
        options.desc = "Flutter Emulators";
      }
    ];

  plugins = {
# parentheses indend lines

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

    telescope.enable = true;

    web-devicons.enable = true;

    nvim-tree = {
      enable = true;
      autoReloadOnWrite = true;
      view = {
        number = true;
        relativenumber = true;
        side = "left";
        preserveWindowProportions = true;  # o false

      };
      renderer.indentMarkers.enable = true; # render | in nvim tree like indent-blankline
    };

# syntax and look

    treesitter = {
# already all installed. If not, run: TSInstall all
      enable = true;
    };



# autocomplition
    cmp = {
      enable = true;
      autoEnableSources = false;
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
        clangd.enable = true;
        cmake.enable = true;

        nixd.enable = true;
        bashls.enable = true;



# web
        cssls.enable = true;
        html.enable = true;
        jsonls.enable = true;



# other

        java_language_server.enable = true;
        pylsp.enable = true;
        lua_ls.enable = true;

        rust_analyzer.enable = true;
        rust_analyzer.installCargo = true;
        rust_analyzer.installRustc = true;


      };

    };

    comment.enable = true;
    lualine.enable = true;
  };


}
