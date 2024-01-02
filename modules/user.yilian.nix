# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{

  users.users.yilian= {
    isNormalUser = true;
    description = "yilian";
    hashedPassword = "$y$j9T$U.MQMTNhNz6TBHfFsw.mT1$8X4BfSwE6JcP6w/o01rVMHasg8bWrWchKlNwnEsUKv";
    extraGroups = [ "networkmanager" ];
    packages = with pkgs; [
      fish-fillets-ng
    #  thunderbird
    ];
  };

}
