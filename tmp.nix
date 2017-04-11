{
  boot.tmpOnTmpfs = false;
  systemd.mounts = [
    {
      unitConfig = {
	    DefaultDependencies = "no";
	    Conflicts = [ "umount.target" ];
	    Before = [ "local-fs.target" "umount.target" ];
	    ConditionPathIsSymbolicLink = "!/tmp";
    };

    where = "/tmp";
    what = "tmpfs";
      mountConfig = {
        Type = "tmpfs";
        Options = "mode=1777,strictatime,size=16G";
      };
    }
  ];
}
