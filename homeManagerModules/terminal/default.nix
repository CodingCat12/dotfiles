{
  programs.fd.enable = true;
  programs.starship.enable = true;

  programs.nushell = {
    enable = true;
    configFile.source = ./config.nu;
  };
  home.shell.enableNushellIntegration = true;

  programs.carapace.enable = true;

  programs.bat = {
    enable = true;
    config = {
      pager = "less -FR";
    };
  };

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
  programs.cava.enable = true;
}
