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


# See if this works



#
# {
#   xdg = {
#     enable = true;
#     mime.enable = true;
#     
#     desktopEntries = {
#       yazi = {
#         name = "Yazi";
#         genericName = "File Manager";
#         comment = "Terminal File Manager";
#         exec = "kitty -e yazi %u";  # Usa Kitty per aprire Yazi 
#         terminal = false;           # Cambiato a false perché specifichiamo già il terminale
#         categories = [ "System" "FileTools" "FileManager" ];
#         mimeType = [ "inode/directory" ];
#         type = "Application";
#       };
#     };
#     
#     mimeApps = {
#       enable = true;
#       defaultApplications = {
#         "inode/directory" = [ "yazi.desktop" ];
#       };
#     };
#   };
#
#   # Assicurati che sia Kitty che Yazi siano installati
#   home.packages = with pkgs; [
#     kitty
#     yazi
#   ];
# }
