{pkgs, inputs, ...}: {
  home.username = "luukm";
  home.homeDirectory = "/home/luukm";

  home.stateVersion = "24.05";

  imports = [
    ../../homeManagerModules/editors/neovim
    ../../homeManagerModules/terminal
    ../../homeManagerModules/coding.nix
    ../../homeManagerModules/ghostty.nix
    ../../homeManagerModules/firefox.nix
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
