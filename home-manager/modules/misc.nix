{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    spotify
    lutris
    vesktop
    wl-clipboard
    gh
  ];
}
