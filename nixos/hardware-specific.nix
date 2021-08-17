
{ config, lib, pkgs, ... }:

  {

  # Enable bootloader
  boot.loader.systemd-boot.enable = true; # (for UEFI systems only)

  # Enable closed source firmware
  hardware.enableRedistributableFirmware = true;

  # Disable IPv6
  # boot.kernelParams = [ "ipv6.disable=1" ];

  # Enabled nested virtualisation
  boot.extraModprobeConfig = "options kvm_intel nested=1";

  # Kernel version
  boot.kernelPackages = pkgs.linuxPackages_xanmod;

  # Enable periodic SSD TRIM of mounted partitions in background
  services.fstrim.enable = true;
  services.fstrim.interval = "weekly";

  # Enable vulkan support
  hardware.opengl.extraPackages = with pkgs; [
  vaapiIntel
  vaapiVdpau
  libvdpau-va-gl
  intel-media-driver
  ];

}
