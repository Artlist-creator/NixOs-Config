{ config, pkgs, ... }:
{
  users = {
    users.artlist = {
      isNormalUser = true;
      home = "/home/artlist";
      useDefaultShell = true;
      description = "Cameron Darren";
      extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user.
    };
  };
}
