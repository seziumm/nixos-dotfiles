{

  keymaps = [

    {
      key = ";";
      action = ":";
    }


    {
      mode ="n";
      key = "<leader>n";
      action = "<cmd>NvimTreeToggle<CR>";

      options.desc = "Toggle the Explorer";
      options.silent = true;
    }


    # TELESCOPE
    {
      mode ="n";
      key = "<leader>td";
      action = "<cmd>Telescope lsp_definitions<CR>";

      options.desc = "Open Telescope Lsp Definitions";
      options.silent = true;

    }


    {
      mode ="n";
      key = "<leader>tf";
      action = "<cmd>Telescope find_files<CR>";

      options.desc = "Open Telescope Find Files";
      options.silent = true;

    }

    {
      mode ="n";
      key = "<leader>tg";
      action = "<cmd>Telescope live_grep<CR>";

      options.desc = "Open Telescope Live Grep";
      options.silent = true;

    }

    {
      mode ="n";
      key = "<leader>tb";
      action = "<cmd>Telescope buffers<CR>";

      options.desc = "Open Telescope Buffers";
      options.silent = true;

    }

    {
      mode ="n";
      key = "<leader>th";
      action = "<cmd>Telescope <CR>";

      options.desc = "Open Telescope Help Tags";
      options.silent = true;

    }

  ];
}
