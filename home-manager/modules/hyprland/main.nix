{

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;

    # xwayland.enable = true; # it fixes some windows see wiki

    settings = {

    xwayland = {   force_zero_scaling = true; }; # fixes some issue with font aliasing

      env = [
        # Hint Electron apps to use Wayland
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,$HOME/screens"
      ];

      monitor = ",1920x1080@60, auto, 1.2";


      "layerrule" = "noanim, selection"; 
      # do not remove it otherwise screenshot can not work properly

      "$mainMod" = "SUPER";
      "$terminal" = "kitty";
      "$fileManager" = "$terminal zsh -c yazi";
      "$menu" = "wofi --show drun";
      "$browser" = "brave";

      exec-once = [
        "hyprpaper"
        "waybar"
        # "wl-gammactl -c 1.0 -b 1.0 -g 0.775"

        "[workspace 1 silent] $browser"
        "[workspace 2 silent] $terminal"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 10;

        border_size = 0;

        # "col.active_border" = "rgba(d65d0eff) rgba(98971aff) 45deg";
        # "col.inactive_border" = "rgba(3c3836ff)";

        resize_on_border = true;

        allow_tearing = false;
        layout = "dwindle";
      };

      decoration = {
        rounding = 5;

        # active_opacity = 1.0;
        # inactive_opacity = 1.0;

        shadow = {
          enabled = false;
        };

        blur = {
          enabled = false;
        };
      };

      animations = {
        enabled = true;

        # @TODO aggiungere animationi di lag 

      };

      input = {
        kb_layout = "us";
        # kb_options = "grp:caps_toggle";
        repeat_delay = 200;
        repeat_rate = 30;
        accel_profile = "flat";

        scroll_factor = 1.0; # all input default scroll_factor, for example mouse

        touchpad = {
          natural_scroll = false; 
          disable_while_typing = false;
          scroll_factor = 0.3; # touchpad scroll factor

        };


      };
      device = [
      {
        name="razer-razer-deathadder-essential";
        sensitivity=-0.6;
      }
# idk why but when I unplug the mouse hyprland makes another device
      {
        name="razer-razer-deathadder-essential-1";
        sensitivity=-0.4;
      }
      ];

      gestures = {
        workspace_swipe = true;
        workspace_swipe_invert = true;
        workspace_swipe_forever	= true;
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "slave";
        new_on_top = true;
        mfact = 0.5;
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      windowrulev2 = [
        "suppressevent maximize, class:.*"
      ];
    };
  };
}
