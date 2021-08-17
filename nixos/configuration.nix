# Leznom's config.
# First of all, good night, I apologize for the inconsistent code, I'm still a newbie.

{ config, pkgs, lib, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./hardware-specific.nix
      ./langAndTypography.nix
      ./packages.nix
      ./users.nix
      ./prints.nix
      ./networking.nix
      ./sound.nix
      ./virtualisation.nix
    ];

  nixpkgs.config.allowUnfree = true;

  # Define your hostname.
  networking.hostName = "Saturn";

  # Nix version. Just don't touch this.
  system.stateVersion = "21.11";

}
