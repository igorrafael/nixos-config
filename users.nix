{
  # Define user accounts. Don't forget to set a password with ‘passwd’.

  users.extraUsers.igor = {
    isNormalUser = true;
    uid = 1000;
    home = "/home/igor";
    description = "Igor Rafael de Sousa";
    extraGroups = [ "wheel" "networkmanager" "libvirtd"];
  };

  users.extraUsers.haskell = {
    isNormalUser = true;
    uid = 1100;
    createHome = true;
    description = "haskell development";
    extraGroups = [];
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDVbLc/ffrWVY/8T83dsCP6Y1P0iWq3Mg8yca8KOqb+NYmY0sQBldFArdz98BHJFsA/lhp76oUQfndamdp2YRtfKe3A1zELmmUeZEwr7XCKv6g3dl/Q9yKgUlEU6HA6WVr9/3IGd0+W/axq5wr5TImvKJJnn1vGwemXG4zOwbWlF+nY8omHXzxdF+sLuXulscfwf7tSTGNEgm9MLusXqGluHi86FrVq73EZ/fesIDFyvdgpcq73Jc1AicS3OZfiOnZ8tHdz5m0hwm09kPLTaYlk/R1X71ZIemWhmC7XDJ7oj3GvHSXeqQ1fvwW6BTIQYIqt0uuRyVgoPOyyC6xCSuRZ igor@velky"
    ];
  };

  users.extraUsers.unity = {
    isNormalUser = true;
    uid = 1110;
    createHome = true;
    description = "unity development";
    extraGroups = [];
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDVbLc/ffrWVY/8T83dsCP6Y1P0iWq3Mg8yca8KOqb+NYmY0sQBldFArdz98BHJFsA/lhp76oUQfndamdp2YRtfKe3A1zELmmUeZEwr7XCKv6g3dl/Q9yKgUlEU6HA6WVr9/3IGd0+W/axq5wr5TImvKJJnn1vGwemXG4zOwbWlF+nY8omHXzxdF+sLuXulscfwf7tSTGNEgm9MLusXqGluHi86FrVq73EZ/fesIDFyvdgpcq73Jc1AicS3OZfiOnZ8tHdz5m0hwm09kPLTaYlk/R1X71ZIemWhmC7XDJ7oj3GvHSXeqQ1fvwW6BTIQYIqt0uuRyVgoPOyyC6xCSuRZ igor@velky"
    ];
  };

  users.extraUsers.atom = {
    isNormalUser = true;
    uid = 1120;
    createHome = true;
    description = "atom ide development";
    extraGroups = [];
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDVbLc/ffrWVY/8T83dsCP6Y1P0iWq3Mg8yca8KOqb+NYmY0sQBldFArdz98BHJFsA/lhp76oUQfndamdp2YRtfKe3A1zELmmUeZEwr7XCKv6g3dl/Q9yKgUlEU6HA6WVr9/3IGd0+W/axq5wr5TImvKJJnn1vGwemXG4zOwbWlF+nY8omHXzxdF+sLuXulscfwf7tSTGNEgm9MLusXqGluHi86FrVq73EZ/fesIDFyvdgpcq73Jc1AicS3OZfiOnZ8tHdz5m0hwm09kPLTaYlk/R1X71ZIemWhmC7XDJ7oj3GvHSXeqQ1fvwW6BTIQYIqt0uuRyVgoPOyyC6xCSuRZ igor@velky"
    ];
  };

}
