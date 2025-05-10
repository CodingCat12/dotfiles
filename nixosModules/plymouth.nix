{
  lib,
  config,
  pkgs,
  ...
}: let
  cfg = config.plymouth;
in {
  options.plymouth = {
    enable = lib.mkEnableOption "plymouth boot splash screen";
  };

  config = lib.mkIf cfg.enable {
    boot = {
      plymouth.enable = true;

      # Enable "Silent Boot"
      consoleLogLevel = 0;
      initrd.verbose = false;
      kernelParams = [
        "quiet"
        "splash"
        "boot.shell_on_fail"
        "loglevel=3"
        "rd.systemd.show_status=false"
        "rd.udev.log_level=3"
        "udev.log_priority=3"
      ];
    };

    catppuccin.plymouth.enable = true;
  };
}
