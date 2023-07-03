{ mkShell, linux, pkg-config, ncurses, buildPackages }:
mkShell {
  name = "linux-shell";
  depsBuildBuild = [ buildPackages.stdenv.cc ]; # mkShell does not include depsBuildBuild
  inputsFrom = [ linux ];
  nativeBuildInputs = [ pkg-config ncurses ];
}
