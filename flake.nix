{
  description = "My system configuration";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    nixvim = {
      url = "github:nix-community/nixvim/nixos-24.11";
      inputs.nixpkgs.follows = "nixpkgs";

    };
  };

  # added nixvim in inputs and outputs
  outputs = { nixpkgs, home-manager, nixvim, ... }@inputs: let
    system = "x86_64-linux";
    homeStateVersion = "24.11"; # 25.05

    user = "sezium";
    # user = "lezium";

    hosts = [
      { hostname =  "laptop";  stateVersion = "24.11"; }
      { hostname = "desktop";  stateVersion = "24.11"; }
    ];

    makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
      system = system;
      specialArgs = {
        inherit inputs stateVersion hostname user;
      };

      modules = [
        ./hosts/${hostname}/configuration.nix
      ];
    };

  in {
    nixosConfigurations = nixpkgs.lib.foldl' (configs: host:
      configs // {
        "${host.hostname}" = makeSystem {
          inherit (host) hostname stateVersion;
        };
      }) {} hosts;

    homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = {
        inherit inputs homeStateVersion user;
      };

      modules = [
        ./home-manager/home.nix


        # pass the nixvim module to home-manager:
        nixvim.homeManagerModules.nixvim
      ];
    };



  };
}
