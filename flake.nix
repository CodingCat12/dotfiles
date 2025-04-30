{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";
    catppuccin.url = "github:catppuccin/nix";
    hyprpanel = {
      url = "github:jas-singhfsu/hyprpanel";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    anyrun = {
      url = "github:anyrun-org/anyrun";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [./hosts/nixos];
    };

    nixosConfigurations.school = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [./hosts/school];
    };

    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [
        nil # nix lsp
        alejandra # nix formatter

        stylua # lua formatter
        lua-language-server # lua lsp
      ];
    };

    formatter.${system} = pkgs.alejandra;
  };
}
