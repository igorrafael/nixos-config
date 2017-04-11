{
  services = {
    printing.enable = true;
    printing.browsing = true;
    printing.defaultShared = true;

    avahi.enable = true;
    avahi.publish.enable = true;
    avahi.publish.userServices = true;
  };
  networking.firewall = {
     allowedTCPPorts = [ 631 ];
     allowedUDPPorts = [ 631 ];
   };
}
