<<<<<<< HEAD
{
  lib,
  config,
  pkgs,
  ...
}: let
  cfg = config.plasma;
in {
  options.plasma = {
    enable = lib.mkEnableOption "plasma destkop environment";
  };

  config = lib.mkIf cfg.enable {
    services.desktopManager.plasma6.enable = true;
    environment.plasma6.excludePackages = with pkgs.kdePackages; [
      konsole
      khelpcenter
    ];
  };
=======
{pkgs, ...}: {
  services.desktopManager.plasma6.enable = false;
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    konsole
    khelpcenter
    kate
  ];
<<<<<<< HEAD
>>>>>>> 3177873 (Exclude `kate` from installed KDE packages)
=======

  environment.systemPackages = with pkgs; [
    kdePackages.sddm-kcm
  ];
>>>>>>> 75ded3d (Add sddm-kcm with KDE Plasma)
}
