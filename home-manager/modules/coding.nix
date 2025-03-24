{pkgs, ...}: {
  home.packages = with pkgs; [
    obsidian

    jetbrains.clion
    jetbrains.rust-rover
    jetbrains.goland
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
