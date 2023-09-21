{ mkShell, linux, gnumake, pkg-config, ncurses, buildPackages }:
mkShell {
  name = "linux-shell";
  depsBuildBuild = [ buildPackages.stdenv.cc ]; # mkShell does not include depsBuildBuild
  inputsFrom = [ linux ];
  nativeBuildInputs = [ gnumake pkg-config ncurses ];
}
