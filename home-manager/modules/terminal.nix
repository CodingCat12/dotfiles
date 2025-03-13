{
  programs.fd.enable = true;
  programs.ripgrep.enable = true;

  programs.starship.enable = true;
  catppuccin.starship.enable = true;

  programs.nushell = {
    enable = true;
    configFile.source = ./config.nu;
  };

  programs.carapace.enable = true;
  programs.carapace.enableNushellIntegration = true;

  programs.bat = {
    enable = true;
    config = {
      pager = "less -FR";
    };
  };

  catppuccin.bat.enable = true;

  programs.fastfetch = {
    enable = true;

    settings = {
      modules = [
        "title"
        "separator"
        "os"
        "host"
        "kernel"
        "uptime"
        "packages"
        "shell"
        "display"
        "de"
        "wm"
        "terminal"
        "cpu"
        "gpu"
        "memory"
        "swap"
        "disk"
        "localip"
        "locale"
      ];
    };
  };

  programs.fzf.enable = true;
  catppuccin.fzf.enable = true;

  programs.yazi = {
    enable = true;
    enableNushellIntegration = true;
  };

  catppuccin.yazi.enable = true;

  programs.btop.enable = true;
  catppuccin.btop.enable = true;

  programs.cava.enable = true;
  catppuccin.cava.enable = true;
}
