{pkgs, ...}: {
  users = {
    users = {
      sudarsh = {
        isNormalUser = true;
        description = "sudarsh";
        extraGroups = ["networkmanager" "wheel" "storage" "plugdev" "video" "audio"];
        shell = pkgs.zsh;
      };
    };
  };
}
