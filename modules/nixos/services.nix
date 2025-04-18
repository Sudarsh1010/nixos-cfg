{pkgs, ...}: {
  security = {
    rtkit = {enable = true;};
    polkit = {enable = true;};
  };

  services = {
    cloudflare-warp.enable = true;

    udev.packages = [
      pkgs.android-udev-rules
    ];

    redis = {
      enable = true;
      bind = "0.0.0.0";  # Listen on all interfaces (default: localhost)
      port = 6379;        # Default Redis port
      settings = {
        save = [ "900 1" "300 10" "60 10000" ];  # Snapshot settings
        maxmemory = "256mb";  # Limit memory usage (optional)
        maxmemory-policy = "allkeys-lru";  # Eviction policy
        appendonly = "yes";  # Enable AOF persistence
      };
    };
    xserver = {
      windowManager.bspwm.enable = true;
      enable = true;
      videoDrivers = ["nvidia"];
      displayManager = {
        gdm = {
          enable = true;
          wayland = true;
        };
      };
      desktopManager = {gnome = {enable = true;};};
      xkb = {
        layout = "us";
        variant = "";
      };
    };
    udisks2 = {enable = true;};
    printing = {enable = true;};
    pipewire = {
      enable = true;
      alsa = {
        enable = true;
        support32Bit = true;
      };
      pulse = {enable = true;};
      jack = {enable = false;};
      wireplumber = {enable = true;};
    };
    pulseaudio = {enable = false;};
    openssh = {enable = true;};
    libinput = {
      enable = true;
      mouse = {accelProfile = "flat";};
      touchpad = {accelProfile = "flat";};
    };

    postgresql = {
      enable = true;
      enableTCPIP = true;
      port = 5432;
      ensureDatabases = [ "postgres" "plobbo" "edulume" "myorbit" ];
      authentication = pkgs.lib.mkOverride 10 ''
        #type database  DBuser  auth-method
        local all       all     trust
        # ipv4
        host  all      all     127.0.0.1/32   trust
        # ipv6
        host all       all     ::1/128        trust
      '';
    };
  };

  programs = {
    hyprland = {
      enable = true;
      xwayland = {enable = true;};
    };
    gnupg = {
      agent = {
        enable = true;
        enableSSHSupport = true;
      };
    };
    zsh.enable = true;
    mtr = {enable = true;};
    nix-ld = {enable = true;};
  };

  environment = {
    sessionVariables = {
      NIXOS_OZONE_WL = "1";
      WLR_NO_HARDWARE_CURSORS = "1";
    };
    variables = {EDITOR = "nvim";};
    systemPackages = with pkgs; [
      android-studio
      linuxPackages.rtl88x2bu
      wpa_supplicant
      networkmanager
      iw
      pgadmin4-desktopmode
      vim
      curl
      wget
      fzf
      grc
      helix
      pywal
      nushell
      hyprpaper
      wl-clipboard
      wl-clip-persist
      swaylock-effects
      brightnessctl
      helvum
      pavucontrol
      playerctl
      wf-recorder
      gnome-tweaks

      # x11 bspwm
      bspwm
      sxhkd    # Required for keybindings
      polybar  # Optional: status bar
      dmenu    # Optional: app launcher
      rofi     # Optional: better app launcher
      picom    # Optional: compositor for transparency
      feh      # Optional: wallpaper manager
    ];
  };

  xdg = {
    portal = {
      enable = true;
      extraPortals = with pkgs; [xdg-desktop-portal-gtk xdg-desktop-portal-hyprland];
    };
  };
}
