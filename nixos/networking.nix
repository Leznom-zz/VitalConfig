
{ config, pkgs, lib, ... }:

{
  programs.wireshark.enable = true;
  programs.bcc.enable = true;

  # Ethernet with NetworkManager
  networking.networkmanager.enable = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # Open ports in the firewall.
  networking.firewall.allowedTCPPorts = [ 631 ];
  networking.firewall.allowedUDPPorts = [ 631 ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}
