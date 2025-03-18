{config, ...}: {
  networking = {
    hostName = "sudarsh";
    wireless = {enable = false;};
    networkmanager = {enable = true;};
    firewall = {
      enable = true;
      # allowedUDPPorts = [ ... ];
      # allowedTCPPorts = [ ... ];
    };
  };

  # boot.extraModulePackages = with config.boot.kernelPackages; [
  #   rtl8821au  # Alternative Realtek driver
  # ];
}
