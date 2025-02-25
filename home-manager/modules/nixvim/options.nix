{
  config.opts = {
    updatetime = 100; 
    # Faster completion

    number = true;
    relativenumber = true;
    
    wrap = false;
    

    splitbelow = true;
    splitright = true;
    scrolloff = 8;

    autoindent = true;
    smartindent = true;
    expandtab = true;

    softtabstop = 2;
    shiftwidth = 2;
    tabstop = 2;

    clipboard = "unnamedplus";

    ignorecase = true;
    incsearch = true;
    smartcase = true;

    wildmode = "list:longest";

    swapfile = false;
    undofile = true; # Build-in persistent undo

# termguicolors = lib.mkForce pkgs.stdenv.isLinux;

  };
} 
