{
# autocomplition
    plugins.cmp = {
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
    plugins.cmp-nvim-lsp.enable = true;
    plugins.cmp-path.enable = true;
    plugins.cmp-buffer.enable = true;
    plugins.cmp_luasnip.enable = true;

}
