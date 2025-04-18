{pkgs, ...}: {
  imports = [
    ../../modules/home-manager/packages.nix

    # x11
    ../../modules/home-manager/desktop/bspwm.nix
    ../../modules/home-manager/desktop/picom.nix
    ../../modules/home-manager/desktop/sxhkd.nix
    ../../modules/home-manager/desktop/polybar.nix
    ../../modules/home-manager/desktop/rofi.nix

    # wayland
    ../../modules/home-manager/desktop/hyprland.nix
    ../../modules/home-manager/desktop/dunst.nix
    ../../modules/home-manager/desktop/waybar.nix
    ../../modules/home-manager/desktop/wofi.nix

    ../../modules/home-manager/editors/neovim.nix

    ../../modules/home-manager/shells/starship.nix

    ../../modules/home-manager/terminals/lazygit.nix
    ../../modules/home-manager/terminals/ghostty.nix
    ../../modules/home-manager/terminals/alacritty.nix
    ../../modules/home-manager/terminals/tmux.nix

    ../../modules/home-manager/git.nix

    ../../modules/shared/config.nix
  ];

  home = {
    username = "sudarsh";
    homeDirectory = "/home/sudarsh";
    stateVersion = "24.11"; # Please read the comment before changing.
    sessionVariables = {
      JAVA_HOME = "${pkgs.jdk21}/lib/openjdk"; # Or jdk8/jdk21
    };
  };

  programs.home-manager.enable = true;
}
