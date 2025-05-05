{
  pkgs,
  inputs,
  ...
}: {
  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
      };
    };
  };

  gtk.enable = true;

  gtk.theme.name = "adw-gtk3-dark";
  gtk.theme.package = pkgs.adw-gtk3;

  gtk.iconTheme.name = "Papirus";
  gtk.iconTheme.package = pkgs.papirus-icon-theme;

  home.packages = with pkgs; [
    (catppuccin-kde.override {flavour = ["mocha"];})
  ];

  imports = [
    inputs.catppuccin.homeModules.catppuccin
  ];

  home.pointerCursor = {
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 24;
    hyprcursor.size = 24;
    gtk.enable = true;
    hyprcursor.enable = true;
  };

  catppuccin.flavor = "mocha";
  catppuccin.enable = true;
}
