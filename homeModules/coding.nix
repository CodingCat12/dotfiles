{pkgs, ...}: {
  home.packages = with pkgs; [
    obsidian
  ];

  programs.git = {
    enable = true;
    userName = "luukm";
    userEmail = "luuk.machielse@gmail.com";

    delta.enable = true;
  };

  programs.gh.enable = true;
}
