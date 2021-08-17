# Language and fonts config.
{ config, pkgs, ... }:

{
  # Select internationalisation properties.
  i18n.defaultLocale = "es_AR.UTF-8";
  i18n.extraLocaleSettings = {
    LC_COLLATE = "C.UTF-8";
  };

  # Tty
  console = {
    font = "Lat2-Terminus16";
    keyMap = "dvorak-es";
  };

  # Set your time zone.
  time.timeZone = "America/Argentina/Buenos_Aires";

  # Fonts selection.
  fonts.fonts = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    source-code-pro
 ];

}
