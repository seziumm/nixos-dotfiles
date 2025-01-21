{
  description = "System Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
  	nixosConfigurations.TeoOS = nixpkgs.lib.nixosSystem {
	  system = "x86_64-linux";
	  modules = [ ./configuration.nix ];
	};


  };
}
