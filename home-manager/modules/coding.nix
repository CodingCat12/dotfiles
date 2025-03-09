{pkgs, ...}: {
  home.packages = with pkgs; [
    go
    lua
    godot_4
  ];

  programs.git = {
    userName = "Luukm";
    userEmail = "luuk.machielse@gmail.com";
  };
}
