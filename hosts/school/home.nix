{
  pkgs,
  inputs,
  ...
}: {
  home.username = "luukm";
  home.homeDirectory = "/home/luukm";

  home.stateVersion = "24.05";

  imports = [
    ../../homeModules/editors/neovim
    ../../homeModules/terminal
    ../../homeModules/coding.nix
    ../../homeModules/ghostty.nix
    ../../homeModules/firefox.nix
    inputs.catppuccin.homeModules.catppuccin
  ];

  home.packages = with pkgs; [
    google-chrome
    spotify
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  programs.home-manager.enable = true;
}
