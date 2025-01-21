{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    shell = "${pkgs.zsh}/bin/zsh";
    terminal = "tmux-256color";
    historyLimit = 1000;
    plugins = with pkgs;
      [
        {
          plugin = tmuxPlugins.gruvbox;
          # extraConfig = "set -g @catppuccin_flavour 'mocha'";
        }
        tmuxPlugins.yank # Copy to system clipboard
        tmuxPlugins.better-mouse-mode # Mouse support
      ];

    extraConfig = ''
    # -------------------------------
    # Base Configuration
    # -------------------------------
    # set -g default-terminal "tmux-256color"
    # set-option -ga terminal-overrides ",xterm-256color:Tc"

    # remove lag in tmux
    set -s escape-time 0

    # Enable mouse support
    set -g mouse on

    # Vim-like keybindings for pane navigation using Ctrl
    bind -n C-h select-pane -L
    bind -n C-j select-pane -D
    bind -n C-k select-pane -U
    bind -n C-l select-pane -R

    # Split panes using Alt + o (horizontal) and Alt + v (vertical)
    bind -n C-o split-window -h  # Horizontal split
    bind -n C-v split-window -v  # Vertical split

    # Close active pane with Alt + q
    bind -n C-q kill-pane

    # Resize panes with Alt + vim motions
    bind -n M-h resize-pane -L
    bind -n M-j resize-pane -D
    bind -n M-k resize-pane -U
    bind -n M-l resize-pane -R

    # Bind keys for moving between panes using Ctrl + Shift + Vim motions
    # bind -n C-S-h swap-pane -L # not working
    bind -n C-S-j swap-pane -D
    bind -n C-S-k swap-pane -U
    # bind -n C-S-l swap-pane -R # not working

    # -------------------------------
    # Plugins Configuration (tpm)
    # -------------------------------

    set -g @plugin 'tmux-plugins/tpm'
    set -g @plugin 'tmux-plugins/tmux-sensible'
    set -g @plugin 'christoomey/vim-tmux-navigator'

    # Initialize TMUX plugin manager (keep this line at the very bottom)
    run '~/.tmux/plugins/tpm/tpm'
    '';
  };
}
