{pkgs, ...}: {
  programs.tmux = {
    enable = true;
    package = pkgs.tmux;
    extraConfig = builtins.readFile ../../../extras/tmux/tmux.conf;
	};
}
