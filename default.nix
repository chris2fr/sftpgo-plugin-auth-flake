let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
  pkgs = import nixpkgs { config = {allowUnfree = true;}; overlays = []; };
in
pkgs.mkShellNoCC {
  packages = [ 
    pkgs.sftpgo
    (pkgs.callPackage ./sftpgoPluginAuth.nix { })
 ];
}

