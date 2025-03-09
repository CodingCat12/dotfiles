{pkgs, inputs, ...}: {
  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
      };
    };
  };

  qt.enable = true;
  qt.platformTheme.name = "gtk";

  qt.style.name = "adwaita-dark";
  qt.style.package = pkgs.adwaita-qt;

  gtk.enable = true;

  gtk.theme.name = "adw-gtk3-dark";
  gtk.theme.package = pkgs.adw-gtk3;

  gtk.iconTheme.name = "Papirus";
  gtk.iconTheme.package = pkgs.papirus-icon-theme;

  home.pointerCursor = {
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 24;
    hyprcursor.size = 24;
    gtk.enable = true;
    hyprcursor.enable = true;
  };


  imports = [
    inputs.catppuccin.homeManagerModules.catppuccin
  ];
  catppuccin.flavor = "mocha";
}
