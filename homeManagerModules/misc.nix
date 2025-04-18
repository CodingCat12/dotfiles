{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    spotify
    lutris
    wl-clipboard
    gh
  ];
}
