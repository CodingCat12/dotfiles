{
  lib,
  config,
  pkgs,
  ...
}: let
  cfg = config.sddm;
in {
  options.sddm = {
    enable = lib.mkEnableOption "sddm display manager";
  };

  config = lib.mkIf cfg.enable {
    services.displayManager.sddm.enable = true;
    services.displayManager.sddm.package = pkgs.kdePackages.sddm;
    services.xserver.enable = true;
  };
}
