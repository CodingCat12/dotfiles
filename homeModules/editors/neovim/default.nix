{
  pkgs,
  inputs,
  ...
}: {
  programs.neovim = {
    enable = true;

    package = inputs.neovim-nightly-overlay.packages.${pkgs.system}.default;

    extraWrapperArgs = ["--prefix" "PATH" ":" (pkgs.lib.fileContents "${pkgs.stdenv.cc}/nix-support/dynamic-linker")];

    defaultEditor = true;

    vimAlias = true;
    vimdiffAlias = true;

    extraPackages = with pkgs; [
      imagemagick
      ripgrep
      cargo
    ];

    extraLuaConfig = pkgs.lib.readFile ./init.lua;
  };

  xdg.configFile."nvim/lua" = { source = ./lua; };
}
