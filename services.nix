{ config, pkgs, ... }:
{
  services = {
    openssh.enable = true;

    # hardware management services
    fstrim.enable = true; # ssd disk optimisation
    tlp.enable = true; # energy/temperature management 
    thermald.enable = true; # thermal optimisation for intel cpu
    #printing.enable = true; # enable CUPS to print documents

    locate.enable = true; # periodically updatedb
    localtime.enable = true;

    xserver = {
      enable = true;
      autorun = true;
      layout = "us";
      videoDrivers = [ "intel" ];
      libinput.enable = true;

      displayManager.sddm = {
        enable = true;
        autoLogin.enable = true;
        autoLogin.user="artlist";
      };
      desktopManager.plasma5.enable = true;   

    };
  };
}
