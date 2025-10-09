{ pkgs, user, config, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;
    users.${user} = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" "audio"];
    };
  };

  # services.getty.autologinUser = user;
  services.greetd = {
    enable = true;
    package = pkgs.greetd.tuigreet;
    restart = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland --remember --remember-user-session";
       
        user = "greeter"; # NOT a username
      };
    };
  };
}
