{...}: {
  services.sxhkd = {
    enable = true;
    keybindings = {
      "alt + @space" = "rofi -show drun";
      "alt + Return" = "alacritty";
      "super + Escape" = "pkill -USR1 -x sxhkd";

      #
      # bspwm hotkeys
      #

      # quit/restart bspwm
      "super + alt + {q,r}" = "bspc {quit,wm -r}";
      #
      # close and kill
      "super + {_,shift + }w" = "bspc node -{c,k}";
      #
      # swap the current node and the biggest window
      "super + g" = "bspc node -s biggest.window";

      # alternate between the tiled and monocle layout
      "super + m" = "bspc desktop -l next";

      # set the window state
      "super + {t,shift + t,s,f}" = "bspc node -t {tiled,pseudo_tiled,floating,fullscreen}";

      #
      # focus/swap
      #

      # focus the node in the given direction
      "alt + shift + {h,j,k,l}" = "bspc node -f {west,south,north,east}";

      # focus or send to the given desktop
      "alt + {_,shift + }{1-9,0}" = "bspc {desktop -f,node -d} '^{1-9,10}'";

      #
      # move/resize
      #

      # expand a window by moving one of its side outward
      "super + shift + {h,j,k,l}" = "bspc node -z {left -20 0,bottom 0 20,top 0 -20,right 20 0}";

      # move a floating window
      "super + {Left,Down,Up,Right}" = "bspc node -v {-20 0,0 20,0 -20,20 0}";

      "super + shift + 4" = "escrotum -s --selection-delay 1500 $HOME/Pictures/Screenshots/Y-m-d-HMS.png";
    };
  };
}
