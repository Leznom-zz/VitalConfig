{pkgs, config, lib, ... }:

{

environment.systemPackages = with pkgs; [
  virtmanager
  virt-viewer
];

virtualisation.libvirtd.enable = true;
virtualisation.docker.enable = true;

users.users.angel.extraGroups = [ "libvirtd" "vboxusers" "docker"];


}
