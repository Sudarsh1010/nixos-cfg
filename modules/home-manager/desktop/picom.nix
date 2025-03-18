{...}: {
  services.picom = {
    enable = true;
    vSync = true;
    fade = true;
    fadeDelta = 5;
    backend = "glx";
    inactiveOpacity = 0.8;
    activeOpacity = 1;
    fadeSteps = [ 0.3 0.3 ];
    opacityRules = [
      "75:class_g = 'Ghostty' && focused"
      "80:class_g = 'Alacritty' && focused"
      "50:class_g = 'Alacritty' && !focused"
      "100:class_g = 'Brave'"
    ];
    settings = {
      # blur ={
      #   method = "gaussian";
      #   size = 10;
      #   deviation = 5.0;
      # };
    };
    shadow = true;
  };
}

