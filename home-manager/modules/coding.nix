{pkgs, ...}: {
  home.packages = with pkgs; [
    go
    lua
    godot_4
  ];
}
