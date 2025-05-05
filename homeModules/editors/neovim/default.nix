{pkgs, ...}: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraPackages = with pkgs; [
      imagemagick
      cargo
    ];
  };

  xdg.configFile."nvim".source = ./config;
  xdg.configFile."nvim/lazy-lock.json".enable = false;
}
