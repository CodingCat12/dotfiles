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
}
