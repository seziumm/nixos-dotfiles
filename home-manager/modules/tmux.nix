{ pkgs, ... }: {
  programs.tmux = {
    enable = true;
    baseIndex = 1;
    mouse = true;
    escapeTime = 0;

    keyMode = "vi";
    terminal = "screen-256color";
    extraConfig = ''
      # required by yazi to work properly
      set -g allow-passthrough on
      set -ga update-environment TERM
      set -ga update-environment TERM_PROGRAM

      set -s escape-time 0
      set -as terminal-features ",kitty*:RGB"
      bind -n M-r source-file ~/.config/tmux/tmux.conf \; display "Reloaded!"


      bind -n M-z select-window -t 1
      bind -n M-x select-window -t 2
      bind -n M-c select-window -t 3
      bind -n M-v select-window -t 4
      bind -n M-b select-window -t 5
      bind -n M-n select-window -t 6
      bind -n M-m select-window -t 7

      bind -n M-Left  select-pane -L
      bind -n M-Right select-pane -R
      bind -n M-Up    select-pane -U
      bind -n M-Down  select-pane -D

      bind -n M-S-Left  resize-pane -L 5
      bind -n M-S-Right resize-pane -R 5
      bind -n M-S-Up    resize-pane -U 3
      bind -n M-S-Down  resize-pane -D 3

      bind -n M-o split-window -v
      bind -n M-y split-window -h

      bind -n M-Enter new-window
      bind -n M-t new-window

      bind-key -T copy-mode-vi 'v' send -X begin-selection
      bind-key -T copy-mode-vi 'y' send -X copy-selection-and-cancel

      bind -n M-q kill-pane
      bind -n M-Q kill-window
      bind -n M-s kill-session

      # Bind Ctrl+Backspace to delete a word backward (zsh)
      # TODO fix it with kitty.
      # kitty should send a recognizable key sequence, but it isn't.

      bind-key -n C-BSpace send-keys C-w

      '';

    plugins = with pkgs;
    [
    # {
    #   plugin = tmuxPlugins.gruvbox;
    # }
    tmuxPlugins.gruvbox
    tmuxPlugins.vim-tmux-navigator
    tmuxPlugins.yank # Copy to system clipboard
    tmuxPlugins.better-mouse-mode # Mouse support
    ];
  };
               }
