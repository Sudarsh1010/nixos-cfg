{pkgs, ...}: {
  users = {
    users = {
      sudarsh = {
        isNormalUser = true;
        description = "sudarsh";
        extraGroups = ["networkmanager" "wheel" "storage" "plugdev" "video" "audio" "kvm" "adbusers" "docker"];
        shell = pkgs.zsh;
      };
    };
  };
  virtualisation.docker.enable = true;
}
