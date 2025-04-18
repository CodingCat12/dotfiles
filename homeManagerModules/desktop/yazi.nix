{pkgs, ...}: let
  plugins-repo = pkgs.fetchFromGitHub {
    owner = "yazi-rs";
    repo = "plugins";
    rev = "8d1aa6c7839b868973e34f6160055d824bb8c399";
    hash = "sha256-EuXkiK80a1roD6ZJs5KEvXELcQhhBtAH5VyfW9YFRc8=";
  };
in {
  programs.yazi = {
    enable = true;
    plugins = {
      chmod = "${plugins-repo}/chmod.yazi";
      #git = "${plugins-repo}/git.yazi";
      #toggle-pane = "${plugins-repo}/toggle-pane.yazi";
      #mount = "${plugins-repo}/mount.yazi";
      starship = pkgs.fetchFromGitHub {
        owner = "Rolv-Apneseth";
        repo = "starship.yazi";
        rev = "6197e4cca4caed0121654079151632f6abcdcae9";
        sha256 = "sha256-oHoBq7BESjGeKsaBnDt0TXV78ggGCdYndLpcwwQ8Zts=";
      };
    };
  };

  catppuccin.yazi.enable = true;
}
