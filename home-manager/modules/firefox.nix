{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nur.modules.nixos.default
  ];

  programs.firefox = {
    enable = true;
    profiles.luukm = {
      extensions = with pkgs.nur.repos.firefox-addons; [
        ublock-origin
      ];
    };
  };
}
