{
  # Set default applications for image and media types
  xdg.mime = {
    enable = true;
    
    defaultApplications = {
      "image/png" = "mpv.desktop";
      "image/jpeg" = "mpv.desktop";
      "image/gif" = "mpv.desktop";
      "image/svg+xml" = "mpv.desktop";
      "video/mp4" = "mpv.desktop";
      "video/x-matroska" = "mpv.desktop";
      "audio/mpeg" = "mpv.desktop";
      "audio/ogg" = "mpv.desktop";

      "application/pdf" = "org.pwmt.zathura.desktop";

      "inode/directory" = "yazi.desktop";
    };
  };
}
