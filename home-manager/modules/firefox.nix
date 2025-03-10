{inputs, ...}: {
  programs.firefox = {
    enable = true;
    profiles.luukm = {
      extensions = with inputs.firefox-addon.packages."x86_64-linux"; [
        ublock-origin
      ];
    };
  };
}
