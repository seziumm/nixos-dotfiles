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

# vertical and horizzontal split with telescope command
            "<leader>tvi" = { action = "<cmd>vsplit | lua require('telescope.builtin').command_history()<CR>"; mode = "n"; options = { desc = "VSplit Command History"; silent = true; }; };
            "<leader>tvb" = { action = "<cmd>vsplit | lua require('telescope.builtin').buffers()<CR>"; mode = "n"; options = { desc = "VSplit Buffers Finder"; silent = true; }; };
            "<leader>tvc" = { action = "<cmd>vsplit | lua require('telescope.builtin').commands()<CR>"; mode = "n"; options = { desc = "VSplit Commands Finder"; silent = true; }; };
            "<leader>tvg" = { action = "<cmd>vsplit | lua require('telescope.builtin').live_grep()<CR>"; mode = "n"; options = { desc = "VSplit Telescope Live Grep"; silent = true; }; };
            "<leader>tvf" = { action = "<cmd>vsplit | lua require('telescope.builtin').find_files()<CR>"; mode = "n"; options = { desc = "VSplit Telescope Find Files"; silent = true; }; };
            "<leader>tvh" = { action = "<cmd>vsplit | lua require('telescope.builtin').help_tags()<CR>"; mode = "n"; options = { desc = "VSplit Help Tags"; silent = true; }; };

            "<leader>tsi" = { action = "<cmd>split | lua require('telescope.builtin').command_history()<CR>"; mode = "n"; options = { desc = "HSplit Command History"; silent = true; }; };
            "<leader>tsb" = { action = "<cmd>split | lua require('telescope.builtin').buffers()<CR>"; mode = "n"; options = { desc = "HSplit Buffers Finder"; silent = true; }; };
            "<leader>tsc" = { action = "<cmd>split | lua require('telescope.builtin').commands()<CR>"; mode = "n"; options = { desc = "HSplit Commands Finder"; silent = true; }; };
            "<leader>tsg" = { action = "<cmd>split | lua require('telescope.builtin').live_grep()<CR>"; mode = "n"; options = { desc = "HSplit Telescope Live Grep"; silent = true; }; };
            "<leader>tsf" = { action = "<cmd>split | lua require('telescope.builtin').find_files()<CR>"; mode = "n"; options = { desc = "HSplit Telescope Find Files"; silent = true; }; };
            "<leader>tsh" = { action = "<cmd>split | lua require('telescope.builtin').help_tags()<CR>"; mode = "n"; options = { desc = "HSplit Help Tags"; silent = true; }; };

        };
    };
}
