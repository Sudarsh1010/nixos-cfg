{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ { 
    nixpkgs, 
    home-manager,
    ...
  }: {
    nixosConfigurations = {
      default = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/default/configuration.nix

          home-manager.nixosModules.home-manager
          {
						home-manager = {
							extraSpecialArgs = { inherit inputs; };
							useGlobalPkgs = true;
							useUserPackages = true;
							backupFileExtension = "backup";
							users.sudarsh = import ./hosts/default/home.nix;
						};
					}
        ];
      };
    };
  };
}
