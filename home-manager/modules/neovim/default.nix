{
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };

  home.file.".config/nvim" = {
    source = ./config;
    recursive = true;
  };

  # Let lazy.nvim manage the lock itself
  home.file.".config/nvim/lazy-lock.json".enable = false;
}
