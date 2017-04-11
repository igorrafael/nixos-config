# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      #./printing.nix
      ./vfio-pci.nix
      ./x.nix
      ./users.nix
      ./samba.nix
      ./tmp.nix
      ./steam.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # kernel 4.8 is required for better IOMMU separation
  boot.kernelPackages = pkgs.linuxPackages_4_8;

  networking.hostName = "velky"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Select internationalisation properties.
  # i18n = {
  #   consoleFont = "Lat2-Terminus16";
  #   consoleKeyMap = "us";
  #   defaultLocale = "en_US.UTF-8";
  # };

  # Set your time zone.
  time.timeZone = "America/New_York";

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep $NAME
  environment.systemPackages = with pkgs; [
    #nix
    nox

    #process management
    dstat
    htop
    psmisc #killall
    xorg.xkill

    #tools
    wget
    xclip
    unzip
    p7zip
    unrar

    #haskell
    ghc
    stack
    cabal-install

    #dev
    atom
    git
    gnumake

    #audio
    pulseaudioFull

    #VM
    kvm
    qemu
    libvirt
    virtmanager
    tigervnc

    #unity dependencies
    python
    emscriptenfastcomp

    #other
    jre
    teamviewer

    #kde5
    kde5.kate
    kde5.kdesu
    kde5.spectacle
    yakuake

    #comunication
    discord #unfree
    slack
    tdesktop

    #browsers
    chromium
    firefox
    google-chrome
  ];
  nixpkgs.config.allowUnfree = true;
  security.chromiumSuidSandbox.enable = true; #for unity3d

  hardware.pulseaudio.enable = true;

  # List services that you want to enable:
  virtualisation.libvirtd.enable = true;

  # Enable the OpenSSH daemon.
  services.openssh = {
    enable = true;
    forwardX11 = true;
  };

  services.httpd = {
     enable = true;
     enablePHP = false;
     adminAddr = "velky@igorrafael.com";
     documentRoot = "/srv/httpd/";
  };
  networking.firewall.allowedTCPPorts = [ 80 ];


  # services.teamviewer.enable = true;

  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "16.09";
}
