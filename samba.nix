{
  services.samba.enable = true;

  services.samba.shares.igor = {
    path = "/home/igor";
    "read only" = "no";
    browseable = "yes";
    "guest ok" = "no";
    "valid users" = "igor";
  };

  services.samba.shares.windows = {
    path = "/run/media/igor/extData/windows"; #TODO automount this partition
    "read only" = "no";
    browseable = "yes";
    "guest ok" = "no";
    "valid users" = "igor";
  };

  services.samba.shares.tmp = {
    path = "/tmp";
    "read only" = "no";
    browseable = "yes";
    "guest ok" = "no";
    "valid users" = "igor";
  };

  services.samba.extraConfig = ''
    guest account = nobody
    map to guest = bad user
  ''; #might need to add security=user (for now using $ smbpassd -a <user>)

  networking.firewall = {
    enable = true;
    allowPing = true;
    allowedTCPPorts = [ 445 139 ];
    allowedUDPPorts = [ 137 138 ];
  };
}
