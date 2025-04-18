{pkgs, ...}: {
  programs.rofi = {
    enable = true;

    extraConfig = {
      display-drun = " ";
      show-icons = true;
    };

    plugins = with pkgs; [
      rofi-emoji
      rofi-calc
    ];
  };

  catppuccin.rofi.enable = true;
}
