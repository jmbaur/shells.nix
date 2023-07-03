{ mkShell, linux, pkg-config, ncurses }:
mkShell {
  name = "linux-shell";
  inputsFrom = [ linux ];
  nativeBuildInputs = [ pkg-config ncurses ];
}
