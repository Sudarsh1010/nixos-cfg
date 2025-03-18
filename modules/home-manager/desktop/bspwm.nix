{pkgs, ...}: {
  xsession = {
    windowManager.bspwm = {
      enable = true;
      package = pkgs.bspwm;
      extraConfig = ''
        # ! /bin/sh

        pgrep -x sxhkd > /dev/null || sxhkd &

        feh --bg-scale ~/dev/dotfiles/wallpapers/unohona.jpg &
        picom &
        polybar &

        xset r rate 250 30

        bspc monitor -d 1 2 3 4 5 6 7 8 9 10

        bspc config border_width         1
        bspc config window_gap           4

        bspc config split_ratio          0.5
        bspc config borderless_monocle   true
        bspc config gapless_monocle      true
      '';
    };
  };
}

