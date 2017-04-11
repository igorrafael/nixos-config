{ config, lib, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    desktopManager.kde5.enable = true;
    autorun = true;
    layout = "us";

    displayManager = {
      slim = {
      	enable = true;
      	defaultUser = "igor";
        autoLogin=true;
      };
    };
  };
}
