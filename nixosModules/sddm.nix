{pkgs, ...}: {
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.package = pkgs.kdePackages.sddm;
  services.displayManager.sddm.wayland.enable = true;
}
