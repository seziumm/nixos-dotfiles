{

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;

    settings = {

      env = [
        # see: https://wiki.hyprland.org/Configuring/Environment-variables/
        # Hint Electron apps to use Wayland
        "NIXOS_OZONE_WL,1"

        # XDG specific environment variables are often detected through portals and applications that may set those for you, 
        # however it is not a bad idea to set them explicitly.
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"

        "QT_AUTO_SCREEN_SCALE_FACTOR,1" # enables automatic scaling, based on the monitor’s pixel
        "QT_QPA_PLATFORM,wayland;xcb" # Tell Qt applications to use the Wayland backend, and fall back to x11 if Wayland is unavailable
        "QT_WAYLAND_DISABLE_WINDOWDECORATION,1" # Disables window decorations on Qt applications
        "QT_QPA_PLATFORMTHEME,qt5ct" # Tells Qt based applications to pick your theme from qt5ct, use with Kvantum.

        # NVIDIA settings
        "GBM_BACKEND,nvidia-drm"
        "__GLX_VENDOR_LIBRARY_NAME,nvidia"
        "LIBVA_DRIVER_NAME,nvidia"
      ];

      monitor = ",preferred, auto, 1.0";

      "layerrule" = "noanim, selection"; 
      # do not remove it otherwise screenshot can not work properly

      "$mainMod" = "SUPER";
      "$terminal" = "kitty";
      "$fileManager" = "$terminal zsh -c yazi";
      "$menu" = "wofi --show drun";
      "$powerMenu" = "wofi-power-menu";
      "$lockScreen" = "hyprlock";
      "$browser" = "brave";

      exec-once = [
        "hyprlock"
        "waybar"

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

        bezier = [
          "myBezier, 0.05, 0.9, 0.1, 1.00"
          "myBezier2, 0, 0.55, 0.45, 1"
          "dragEffect, 0, 1, 0.4, 1"
        ];

        animation = [
          "windowsMove, 1, 10, dragEffect"

            "windows, 1, 7, myBezier"
            "windowsOut, 1, 10, default, popin 80%"
            "border, 1, 10, default"
            "borderangle, 1, 8, default"
            "fade, 1, 3, myBezier2"
            "layersIn, 1, 5, myBezier2, slide"


            "workspaces, 1, 5, myBezier2"

        ];

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
        sensitivity=-0.65;
      }
# idk why but when I unplug the mouse hyprland creates another device
      {
        name="razer-razer-deathadder-essential-1";
        sensitivity=-0.65;
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
        animate_mouse_windowdragging = true; # this is for the latency dragging effect with mouse.
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      windowrulev2 = [
        "suppressevent maximize, class:.*"
      ];
    };
  };
}
