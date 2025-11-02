{

  plugins.telescope = {
    enable = true;

    settings =  {
      defaults = {
        color_devicons = true;
        sorting_strategy = "ascending"; /* visto che propt positon e' sopra, i risultati migliori li mettiamo sopra. */
        # borderchars = ["" "" "" ""  "" "" "" ""];
        path_displays = "smart"; 

        layout_config = {
          width = 999; 
          height = 999;

          prompt_position = "top";
          # preview_cutoff = 20; /* if I uncomment this, preview does not collapse */

        };
      };

    };

    keymaps = {
      "<leader>ti" = {
        action = "command_history";
        mode = "n";

        options = {
          desc = "Open History"; /* Open Commands History */
          silent = true;
        };
      };
      "<leader>tb" = {
        action = "buffers";
        mode = "n";

        options = {
          desc = "Open Buffers Finder";
          silent = true;
        };
      };

      "<leader>tc" = {
        action = "commands";
        mode = "n";

        options = {
          desc = "Open Commands Finder"; /* if there are any arguments, it will insert in command mode. */
          silent = true;
        };
      };

      "<leader>tg" = {
        action = "live_grep";
        mode = "n";

        options = {
          desc = "Open Telescope Live Grep";
          silent = true;
        };
      };

      "<leader>tf" = {
        action = "find_files";
        mode = "n";

        options = {
          desc = "Open Telescope Find Files";
          silent = true;
        };
      };

      "<leader>th" = {
        action = "help_tags";
        mode ="n";

        options = {
          desc = "Open Telescope Help Tags";
          silent = true;
        };
      };

    };









  };

}
