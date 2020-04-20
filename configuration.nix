# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./hardware.nix
      ./networking.nix
      ./boot.nix
      ./services.nix
      ./users.nix
      ./software.nix 
    ];

  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };

  time.timeZone = "America/Newyork";

  sound.enable = true;
  
  security.sudo.enable = true;

  fonts = {
    fonts = with pkgs; [
      corefonts # Microsoft free fonts
      fira-code
      google-fonts
      hack-font
      hasklig
      noto-fonts
      powerline-fonts
      siji
      unifont
    ];
    
    fontconfig.defaultFonts = {
      serif = [ "Ubuntu Condensed" "Ubuntu" ];
      sansSerif = [ "Ubuntu" ];
      monospace = [ "Fira Code" ];
    };
  };

  environment.variables.EDITOR = "nvim";
  environment.variables.VISUAL = "nvim";
  environment.variables.TERMINAL = "kitty";
  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.09"; # Did you read the comment?

}

