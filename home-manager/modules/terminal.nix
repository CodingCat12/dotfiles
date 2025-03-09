{
  programs.fd.enable = true;
  programs.ripgrep.enable = true;
  programs.eza.enable = true;

  programs.starship = {
    enable = true;
  };

  catppuccin.starship.enable = true;

  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      set fish_greeting
      starship init fish | source

      function y
        diskset tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
          builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
      end
    '';

    shellAbbrs = {
      # Better coreutils
      ls = "eza";
      grep = "rg";
    };
  };

  catppuccin.fish.enable = true;

  programs.bat = {
    enable = true;
    config = {
      pager = "less -FR";
    };
  };

  catppuccin.bat.enable = true;

  home.sessionVariables = {
    MANPAGER = "sh -c 'col -bx | bat -l man -p'";
    MANROFFOPT = "-c";
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

  programs.fzf = {
    enable = true;
  };

  catppuccin.fzf.enable = true;

  programs.yazi = {
    enable = true;
    enableFishIntegration = true;
  };

  catppuccin.yazi.enable = true;

  programs.btop = {
    enable = true;
  };

  catppuccin.btop.enable = true;

  programs.cava.enable = true;
  catppuccin.cava.enable = true;
}
