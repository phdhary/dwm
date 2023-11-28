{
  description = "de we em";
  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.dwm =
      nixpkgs.legacyPackages.x86_64-linux.dwm.overrideAttrs {
        version = "patched";
        src = ./.;
      };
    packages.x86_64-linux.default = self.packages.x86_64-linux.dwm;
  };
}
