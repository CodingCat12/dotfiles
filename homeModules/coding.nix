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

    delta.enable = true;
  };

  programs.gh.enable = true;
}
