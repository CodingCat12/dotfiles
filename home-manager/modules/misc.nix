{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    firefox
    spotify
    lutris
    vesktop
    wl-clipboard
    gh
  ];
}
