{ mkShell, gnumake, bison, flex, swig, python3, openssl, libuuid, gnutls }:
# NOTE: enough to run `make check` in u-boot's source tree
mkShell {
  name = "u-boot-shell";
  nativeBuildInputs = [
    gnumake
    bison
    flex
    swig
    (python3.withPackages (p: with p; [ pyelftools pytest pygit2 libfdt setuptools requests filelock ]))
  ];
  buildInputs = [ openssl libuuid gnutls ];
}
