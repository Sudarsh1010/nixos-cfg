{...}: {
  programs.lazygit = {
    enable = true;
    settings = {
      gui.theme = {
        activeBorderColor=[ "#fb4934" "bold"];
        inactiveBorderColor= [ "#928374" ];
        optionsTextColor= [ "#83a598" ];
        selectedLineBgColor= [ "#504945" ];
        cherryPickedCommitBgColor= [ "#3c3836" ];
        cherryPickedCommitFgColor= [ "#d3869b" ];
        unstagedChangesColor= [ "#fabd2f" ];
        defaultFgColor= [ "#ebdbb2" ];
        searchingActiveBorderColor= [ "#b8bb26" ];
        authorColors= {
          "*"= [ "#928374" ];
        };
      };
    };
  };
}
