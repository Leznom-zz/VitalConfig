# Users basic settings.

{ config, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’
  users.users.angel = {
    isNormalUser = true;
    home = "/home/angel";
    description = "Pusch Angel";
    extraGroups = [ "wheel" "networkmanager" "lp" "video" "audio" "input" "disk" ];
  };
}
