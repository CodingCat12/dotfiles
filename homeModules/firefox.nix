{pkgs, ...}: {
  programs.firefox = {
    enable = true;
    package = pkgs.firefox-devedition-bin;
    profiles.default.extensions.force = true;
  };
}
