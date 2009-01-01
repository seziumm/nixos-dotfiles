{ pkgs, ...}:
{
  programs.yazi = {
    enable = true;

    settings = {
      mgr = {
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

    };
  };
}
