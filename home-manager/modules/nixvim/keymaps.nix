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

   extraConfigVim = ''
      " Competitive Programming keybindings
      function! SetupCompetitiveProgramming()
        " Debug build with input from file
        nnoremap <F6> :w <bar> :vsplit<CR>:terminal g++ -D MYDEBUG -std=c++17 -fsanitize=address -g -Og -Wall -Wextra %:t -o %:r && ./%:r < input.txt<CR>
        
        " Debug build with manual input
        nnoremap <F7> :w <bar> :vsplit<CR>:terminal g++ -D MYDEBUG -std=c++17 -fsanitize=address -g -Og -Wall -Wextra %:t -o %:r && ./%:r<CR>
        
        " Release build with input from file
        nnoremap <F8> :w <bar> :vsplit<CR>:terminal g++ -D MYDEBUG -std=c++17 -O2 %:t -o %:r && ./%:r < input.txt<CR>
        
        " Release build with manual input
        nnoremap <F9> :w <bar> :vsplit<CR>:terminal g++ -D MYDEBUG -std=c++17 -O2 %:t -o %:r && ./%:r<CR>
        
        " Release build with input/output files
        nnoremap <F10> :w <bar> :vsplit<CR>:terminal g++ -D MYDEBUG -std=c++17 -O2 %:t -o %:r && ./%:r < input.txt > output.txt<CR>
        
        echo "Competitive Programming mode enabled!"
      endfunction

      " Map leader+cp to enable competitive programming mode
      nnoremap <leader>cp :call SetupCompetitiveProgramming()<CR>

      " Terminal settings
      autocmd TermOpen * startinsert
      
      " Terminal mappings
      tnoremap <Esc> <C-\><C-n>
      tnoremap <C-w>h <C-\><C-n><C-w>h
      tnoremap <C-w>j <C-\><C-n><C-w>j
      tnoremap <C-w>k <C-\><C-n><C-w>k
      tnoremap <C-w>l <C-\><C-n><C-w>l
    '';

}
