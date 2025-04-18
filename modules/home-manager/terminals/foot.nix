{pkgs, ...}: {
  programs.foot = {
    enable = true;
    enableZshIntegration = true;
    package = pkgs.foot;
  };
}
