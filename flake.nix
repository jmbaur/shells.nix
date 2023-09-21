{
  description = "nix shells for common projects";
  outputs = { self, nixpkgs }: {
    legacyPackages = nixpkgs.lib.genAttrs [ "x86_64-linux" "aarch64-linux" ] (system: import nixpkgs {
      inherit system;
      overlays = [
        (final: prev: {
          shells = {
            linux = prev.callPackage ./linux.nix { };
            u-boot = prev.callPackage ./u-boot.nix { };
          };
        })
      ];
    });
  };
}
