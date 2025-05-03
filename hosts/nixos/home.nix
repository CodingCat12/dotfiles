{
  home.username = "luukm";
  home.homeDirectory = "/home/luukm";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;

  imports = [
    ../../homeModules
  ];
}
