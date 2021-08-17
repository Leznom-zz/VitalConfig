
{ config, pkgs, lib, ... }:

{
  # Enable the X11 windowing system
  services.xserver.enable = true;

  # Enable SDDM Display Manager
  services.xserver.displayManager.sddm.enable = true;

  # Enable the PLASMA Desktop Environment
  services.xserver.desktopManager.plasma5.enable = true;

  # This options is screencasting in wayland
  xdg = {
  portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-kde
    ];
    };
  };

  # Enable touchpad support (enabled default in most desktopManager)
  services.xserver.libinput.enable = true;

  # Enable flatpack client
  services.flatpak.enable = true;

  # List packages installed in system profile. To search, run:
  environment.systemPackages = with pkgs; [
    # basic Packages
    file wget gitMinimal curl pwgen unzip
    sshfs # Mount a filesystem through ssh

    # Nixos specific
    nixos-generators # Generate nixos images
    patchelf
    niv # NixOS project creator
    nix-prefetch # Sha256sum a link for nixos
    nix-index # apt-file equivalent

     # hardware inspections
    pciutils
    smartmontools # ssd health check
    hdparm
    inxi

    # Plasma addons
    plasma5Packages.kio-gdrive 
    libsForQt5.kaccounts-integration
    libsForQt5.kaccounts-providers

    # Multimedia
    ffmpeg mpv dragon
    kdenlive # Video editor
    gimp # Photo editor
    blender # 3D Model editor
    # Screenrecorder
    simplescreenrecorder obs-studio

    # Aplicattions.
    tdesktop # Telegram client
    kate # Text editor for kde
    libreoffice-qt # Office suite for qt
    vivaldi # Privative web browser
    firefox
    alacritty # Terminal based on GPU writting in rust 

    # Games
    superTuxKart
  ];

  # Enable bad licenses
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "vivaldi"
  ];

}
