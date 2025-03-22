{pkgs, ...}: {
  home.packages = with pkgs; [
    go
    lua
    godot_4
    obsidian
  ];

  programs.git = {
    enable = true;
    userName = "luukm";
    userEmail = "luuk.machielse@gmail.com";
  };

  programs.gh.enable = true;

  programs.helix.enable = true;
  catppuccin.helix.enable = true;
}
