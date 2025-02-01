{
  # Set default applications for image and media types
  xdg.mimeApps = {
    enable = true;
    
    defaultApplications = {
      "image/png" = "imv.desktop";
      "image/jpeg" = "imv.desktop";
      "image/gif" = "imv.desktop";
      "image/svg+xml" = "imv.desktop";
      "video/mp4" = "mpv.desktop";
      "video/x-matroska" = "mpv.desktop";
      "audio/mpeg" = "mpv.desktop";
      "audio/ogg" = "mpv.desktop";

      "application/pdf" = "org.pwmt.zathura.desktop";
    };
  };
}
