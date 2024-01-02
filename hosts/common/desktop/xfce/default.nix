{pkgs, ...}:


{

  services.xserver = {
    enable = true;

    desktopManager = {
      xterm.enable = false;
      xfce.enable = true;
    };

    displayManager = {
        defaultSession = "xfce";
        lightdm.enable = true;
        gdm.enable = false;
    };

    # Configure keymap in X11
    layout = "us";
    xkbVariant = "";
  };

}
