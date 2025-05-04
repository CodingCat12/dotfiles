{ config, pkgs, lib, ... }:
with lib;
let
  cfg = config.greetd;
in
{
  options.greetd = {
    enable = mkEnableOption "greetd greeter";
  };

  config = mkIf cfg.enable {
    services.greetd = {
      enable = true;
      settings = {
        default_session = {
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd hyprland";
          user = "greeter";
        };
      };
    };
  };
}
