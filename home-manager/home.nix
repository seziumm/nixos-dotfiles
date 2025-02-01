{ homeStateVersion, user, ... }: {
  imports = [
    ./modules
    ./home-packages.nix
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;

  #   pointerCursor = {
  #     package = pkgs.vanilla-dmz;
  #     name = "Vanilla-DMZ";
  #     size = 24;
  #     gtk.enable = true;
  #   };

  };
}
