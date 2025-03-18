{pkgs, ...}: {
  programs.alacritty = {
    enable = true;
    package = pkgs.alacritty;
    settings = {
      font = {
        normal = {
          family = "0xProto Nerd Font";
          style = "Regular";
        };
        size = 10;
      };

      window = {
        decorations = "none";  # Equivalent to `window-decoration = false`
        padding = {
          x = 4;
          y = 4;
        };
        dynamic_title = true; # Keeps working directory in tab
      };

      cursor = {
        style = "Underline";
        unfocused_hollow = false;
      };

      mouse = {
        hide_when_typing = true;
      };

      selection.save_to_clipboard = true;  # Equivalent to `copy-on-select = true`

      colors = {
        primary = {
          background = "#000000";
          foreground = "#EBDBB2";
        };
        normal = {
          black = "#1D2021";
          red = "#CC241D";
          green = "#98971A";
          yellow = "#D79921";
          blue = "#458588";
          magenta = "#B16286";
          cyan = "#689D6A";
          white = "#A89984";
        };
        bright = {
          black = "#928374";
          red = "#FB4934";
          green = "#B8BB26";
          yellow = "#FABD2F";
          blue = "#83A598";
          magenta = "#D3869B";
          cyan = "#8EC07C";
          white = "#EBDBB2";
        };

        draw_bold_text_with_bright_colors = true;  # Equivalent to `bold-is-bright = true`
      };

      general.live_config_reload = true;
    };
  };
}
