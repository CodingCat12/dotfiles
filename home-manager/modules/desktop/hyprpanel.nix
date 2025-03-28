{inputs, ...}: {
  imports = [inputs.hyprpanel.homeManagerModules.hyprpanel];

  programs.hyprpanel = {
    enable = true;
    hyprland.enable = true;

    settings.bar = {
      launcher.icon = "";
    };
  };
}
