{ pkgs, ...}:
{
  programs.yazi = {
    enable = true;

    settings = {
      manager = {
        ratio = [1 2 3];
        sort_by = "natural";
        sort_sensitive = false;
        sort_reverse = false;
        sort_dir_first = true;

        linemode = "size";
        show_hidden = false;
        show_symlink = false;
        scrolloff = 255;
      };

      preview = {
        wrap = "no";
        tab_size = 2;
        max_width = 1000;
        max_height = 1500;
        image_quality = 75;
        sixel_friction = 15;
      };
      opener.rules = [
# MPV for images (explicit path)
      {
        mime = "image/*";
        run = "${pkgs.mpv}/bin/mpv --player-operation-mode=pseudo-gui $FILE";
        orphan = true;
        block = true;
      }

# MPV for video/audio
      {
        mime = "video/*";
        run = "${pkgs.mpv}/bin/mpv --player-operation-mode=pseudo-gui $FILE";
        orphan = true;
        block = true;
      }
      {
        mime = "audio/*";
        run = "${pkgs.mpv}/bin/mpv --player-operation-mode=pseudo-gui $FILE";
        orphan = true;
        block = true;
      }

# Zathura for PDFs (with DBUS fix)
      {
        mime = "application/pdf";
        run = "${pkgs.zathura}/bin/zathura \"$FILE\"";
        block = true;
        orphan = true;
      }

# Fallback
# {
#   run = "${pkgs.xdg-utils}/bin/xdg-open $FILE";
# }
      ];

# Theme configuration from theme.toml
      theme = {
        manager = {
          cwd = { fg = "#83a598"; };

          hovered = { 
            fg = "#282828"; 
            bg = "#83a598"; 
          };
          preview_hovered = { underline = true; };

          find_keyword = { 
            fg = "#b8bb26"; 
            italic = true; 
          };
          find_position = { 
            fg = "#fe8019"; 
            bg = "reset"; 
            italic = true; 
          };

          marker_selected = { 
            fg = "#b8bb26"; 
            bg = "#b8bb26"; 
          };
          marker_copied = { 
            fg = "#b8bb26"; 
            bg = "#b8bb26"; 
          };
          marker_cut = { 
            fg = "#fb4934"; 
            bg = "#fb4934"; 
          };

          tab_active = { 
            fg = "#282828"; 
            bg = "#504945"; 
          };
          tab_inactive = { 
            fg = "#a89984"; 
            bg = "#3c3836"; 
          };
          tab_width = 1;

          border_symbol = "│";
          border_style = { fg = "#665c54"; };
        };

        status = {
          separator_open = "";
          separator_close = "";
          separator_style = { 
            fg = "#3c3836"; 
            bg = "#3c3836"; 
          };

          progress_label = { 
            fg = "#ebdbb2"; 
            bold = true; 
          };
          progress_normal = { 
            fg = "#504945"; 
            bg = "#3c3836"; 
          };
          progress_error = { 
            fg = "#fb4934"; 
            bg = "#3c3836"; 
          };

          permissions = {
            t = { fg = "#504945"; };
            r = { fg = "#b8bb26"; };
            w = { fg = "#fb4934"; };
            x = { fg = "#b8bb26"; };
            s = { fg = "#665c54"; };
          };
        };

        mode = {
          normal_main = { 
            fg = "#282828"; 
            bg = "#A89984"; 
            bold = true; 
          };
          normal_alt = { 
            fg = "#282828"; 
            bg = "#A89984"; 
            bold = true; 
          };

          select_main = { 
            fg = "#282828"; 
            bg = "#b8bb26"; 
            bold = true; 
          };
          select_alt = { 
            fg = "#282828"; 
            bg = "#b8bb26"; 
            bold = true; 
          };

          unset_main = { 
            fg = "#282828"; 
            bg = "#d3869b"; 
            bold = true; 
          };
          unset_alt = { 
            fg = "#282828"; 
            bg = "#d3869b"; 
            bold = true; 
          };
        };
      };
    };
  };
}
