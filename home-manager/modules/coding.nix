{pkgs, ...}: {
  home.packages = with pkgs; [
    go
    lua
    godot_4
  ];

  programs.git = {
    enable = true;
    userName = "luukm";
    userEmail = "luuk.machielse@gmail.com";
  };

  programs.gh.enable = true;
}
