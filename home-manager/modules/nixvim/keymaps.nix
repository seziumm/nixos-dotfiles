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



  ];

}
