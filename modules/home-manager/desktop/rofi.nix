{pkgs, ...}: {
  programs.rofi = {
    enable = true;
    package = pkgs.rofi;
    # font = "Monospace 10";
    # extraConfig = {
    #   "@theme" = ''
    #      * {
    #         /* Theme settings */
    #         highlight: bold italic;
    #         scrollbar: true;
    #
    #         /* Gruvbox dark colors */
    #         gruvbox-dark-bg0-hard:     #1d2021;
    #         gruvbox-dark-bg0:          #282828;
    #         gruvbox-dark-bg2:          #504945;
    #         gruvbox-dark-fg0:          #fbf1c7;
    #         gruvbox-dark-fg1:          #ebdbb2;
    #         gruvbox-dark-red-dark:     #cc241d;
    #         gruvbox-dark-red-light:    #fb4934;
    #         gruvbox-dark-yellow-dark:  #d79921;
    #         gruvbox-dark-yellow-light: #fabd2f;
    #         gruvbox-dark-gray:         #a89984;
    #
    #         /* Theme colors */
    #         background:                  @gruvbox-dark-bg0-hard;
    #         background-color:            @background;
    #         foreground:                  @gruvbox-dark-fg1;
    #         border-color:                @gruvbox-dark-gray;
    #         separatorcolor:              @border-color;
    #         scrollbar-handle:            @border-color;
    #
    #         normal-background:           @background;
    #         normal-foreground:           @foreground;
    #         alternate-normal-background: @gruvbox-dark-bg0;
    #         alternate-normal-foreground: @foreground;
    #         selected-normal-background:  @gruvbox-dark-bg2;
    #         selected-normal-foreground:  @gruvbox-dark-fg0;
    #
    #         active-background:           @gruvbox-dark-yellow-dark;
    #         active-foreground:           @background;
    #         alternate-active-background: @active-background;
    #         alternate-active-foreground: @active-foreground;
    #         selected-active-background:  @gruvbox-dark-yellow-light;
    #         selected-active-foreground:  @active-foreground;
    #
    #         urgent-background:           @gruvbox-dark-red-dark;
    #         urgent-foreground:           @background;
    #         alternate-urgent-background: @urgent-background;
    #         alternate-urgent-foreground: @urgent-foreground;
    #         selected-urgent-background:  @gruvbox-dark-red-light;
    #         selected-urgent-foreground:  @urgent-foreground;
    #     }
    #
    #     window {
    #         background-color: @background;
    #         border:           2;
    #         padding:          2;
    #     }
    #
    #     mainbox {
    #         border:  0;
    #         padding: 0;
    #     }
    #
    #     message {
    #         border:       2px 0 0;
    #         border-color: @separatorcolor;
    #         padding:      1px;
    #     }
    #
    #     textbox {
    #         highlight:  @highlight;
    #         text-color: @foreground;
    #     }
    #
    #     listview {
    #         border:       2px solid 0 0;
    #         padding:      2px 0 0;
    #         border-color: @separatorcolor;
    #         spacing:      2px;
    #         scrollbar:    @scrollbar;
    #     }
    #
    #     element {
    #         border:  0;
    #         padding: 2px;
    #     }
    #
    #     element.normal.normal {
    #         background-color: @normal-background;
    #         text-color:       @normal-foreground;
    #     }
    #
    #     element.normal.urgent {
    #         background-color: @urgent-background;
    #         text-color:       @urgent-foreground;
    #     }
    #
    #     element.normal.active {
    #         background-color: @active-background;
    #         text-color:       @active-foreground;
    #     }
    #
    #     element.selected.normal {
    #         background-color: @selected-normal-background;
    #         text-color:       @selected-normal-foreground;
    #     }
    #
    #     element.selected.urgent {
    #         background-color: @selected-urgent-background;
    #         text-color:       @selected-urgent-foreground;
    #     }
    #
    #     element.selected.active {
    #         background-color: @selected-active-background;
    #         text-color:       @selected-active-foreground;
    #     }
    #
    #     element.alternate.normal {
    #         background-color: @alternate-normal-background;
    #         text-color:       @alternate-normal-foreground;
    #     }
    #
    #     element.alternate.urgent {
    #         background-color: @alternate-urgent-background;
    #         text-color:       @alternate-urgent-foreground;
    #     }
    #
    #     element.alternate.active {
    #         background-color: @alternate-active-background;
    #         text-color:       @alternate-active-foreground;
    #     }
    #
    #     scrollbar {
    #         width:        4px;
    #         border:       0;
    #         handle-color: @scrollbar-handle;
    #         handle-width: 8px;
    #         padding:      0;
    #     }
    #
    #     sidebar {
    #         border:       2px 0 0;
    #         border-color: @separatorcolor;
    #     }
    #
    #     inputbar {
    #         spacing:    0;
    #         text-color: @normal-foreground;
    #         padding:    2px;
    #         children:   [ prompt, textbox-prompt-sep, entry, case-indicator ];
    #     }
    #
    #     case-indicator,
    #     entry,
    #     prompt,
    #     button {
    #         spacing:    0;
    #         text-color: @normal-foreground;
    #     }
    #
    #     button.selected {
    #         background-color: @selected-normal-background;
    #         text-color:       @selected-normal-foreground;
    #     }
    #
    #     textbox-prompt-sep {
    #         expand:     false;
    #         str:        ":";
    #         text-color: @normal-foreground;
    #         margin:     0 0.3em 0 0;
    #     }
    #   '';
    # };
  };
}
