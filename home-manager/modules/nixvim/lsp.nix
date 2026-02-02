{

    plugins.lsp = {
        enable = true;

        servers = {
            clangd.enable = true;
            cmake.enable = true;

            nixd.enable = true;
            bashls.enable = true;
            asm_lsp.enable = true;

# web
            cssls.enable = true;
            html.enable = true;
            jsonls.enable = true;

# other
            pylsp.enable = true;
            lua_ls.enable = true;
        };
    };


}
