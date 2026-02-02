{

# use g? in nvim-tree to open mappings
# see help nvim-tree-optss
    plugins.nvim-tree = {
        enable = true;
        openOnSetup = true;

        settings  = {
            hijack_cursor = true;
            auto_reload_on_write = true;
            renderer.indent_markers.enable = true; # render | in nvim tree like indent-blankline
                view = {
                    signcolumn = "no";
                    number = true;
                    relativenumber = true;
                    side = "left";
                    width = {
                        padding = 0;
                    }; # this to be dynamic width
                };
        };
    };

}
