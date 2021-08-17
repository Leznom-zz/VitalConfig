
{ config, pkgs, lib, ... }:

{
  # Printers configuration
  services.printing.enable = true;
  services.printing.drivers = [ pkgs.hplip ];

  # Enable automatic discovery of the printer from other Linux systems with avahi running.
  services.avahi.enable = true;
  # Important to resolve .local domains of printers, otherwise you get an error
  # like  "Impossible to connect to XXX.local: Name or service not known"
  #services.avahi.nssmdns = true;
  #services.avahi.publish.enable = true;
  #services.avahi.publish.userServices = true;
  services.printing.browsing = true;
  services.printing.allowFrom = [ "all" ]; # this gives access to anyone on the interface you might want to limit it see the official documentation
  services.printing.defaultShared = true; # If you want
}
