{inputs, ...}: {
  imports = [inputs.hyprpanel.homeManagerModules.hyprpanel];

  programs.hyprpanel = {
    enable = true;
    hyprland.enable = true;

    settings = {
      bar.launcher.icon = "";
      menus.dashboard.shortcuts.left = {
        shortcut1 = {
          command = "firefox-developer-edition";
          icon = "󰈹";
          tooltip = "Firefox";
        };
        shortcut2 = {
          command = "spotify";
          icon = "";
          tooltip = "Spotify";
        };
      };
      menus.dashboard.directories.left.directory3.label = "󱧼";
    };
  };
}
