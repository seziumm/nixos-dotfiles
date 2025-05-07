{
  programs.mpv = {
    enable = true;
    config = {
      # loop-file = "inf"; # videos loop
      image-display-duration = "inf";
    };
    bindings = {
# Scroll tra le immagini (come h/l in Vim)
      h = "playlist-prev";
      l = "playlist-next";
      r = "cycle_values video-rotate 0 90 180 270";


# Movimenti rapidi avanti/indietro (come j/k in Vim) +, - seconds to the video
      j = "seek -5";
      k = "seek 5";
    };
  };
}
