{pkgs, ...}: {
  services.desktopManager.plasma6.enable = false;
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    konsole
    khelpcenter
  ];
}
