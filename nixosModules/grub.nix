{
  lib,
  config,
  ...
}: let
  cfg = config.grub;
in {
  options.grub = {
    enable = lib.mkEnableOption "grub bootloader";
  };

  config = lib.mkIf cfg.enable {
    boot.loader.grub = {
      enable = true;
      devices = ["nodev"];
      efiSupport = true;
    };

    boot.loader.efi.canTouchEfiVariables = true;

    catppuccin.grub.enable = true;
  };
}
