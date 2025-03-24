{
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };

  catppuccin.nvim.enable = true;

  xdg.configFile."nvim".source = ./config;
}
