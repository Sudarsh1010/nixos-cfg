{pkgs, ...}: {
  hardware = {
    graphics.enable = true;
    cpu = { amd = { updateMicrocode = true; }; };
    nvidia = {
      modesetting.enable = true;
      nvidiaSettings = true;

      open = true;
    };
  };
}
