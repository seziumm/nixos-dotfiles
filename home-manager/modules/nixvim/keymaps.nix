{

    keymaps = [

    {
        key = ";";
        action = ":";
    }

    {
        mode = "n";
        key = "<Esc>";
        action = "<cmd>noh<CR><Esc>";
        options = {
            silent = true;
            desc = "Clear search highlight and escape";
        };
    }

    {
        mode ="n";
        key = "<leader>n";
        action = "<cmd>NvimTreeToggle<CR>";

        options.desc = "Toggle the Explorer";
        options.silent = true;

    }

    {
        mode = "n";
        key = "<C-q>";
        action = "<C-w>q"; # use ctrl + q to close current buffer.
            options = { silent = true; };
    } 

    ];

}
