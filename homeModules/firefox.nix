{pkgs, ...}: {
  programs.firefox = {
    enable = true;
    package = pkgs.firefox-devedition;
    profiles.default.extensions.force = true;
  };
}
