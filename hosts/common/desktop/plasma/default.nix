
{pkgs, ...}:


{


services.xserver = {
    enable = true;
    layout = "us";
  # Configure keymap in X11
    xkbVariant = "";

    desktopManager = {
      plasma5.enable = true;
    };

    displayManager = {
      sddm.enable = true;

      autoLogin = {
        enable = false;
        user = "matt";
      };
    };

    excludePackages = [ pkgs.xterm ];
  };

  systemd.services = {
    "getty@tty1".enable = false;
    "autovt@tty1".enable = false;
  };

  services.flatpak.enable = true;

}
