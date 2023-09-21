{ mkShell, gnumake, bison, flex, swig, lz4, armTrustedFirmwareTools, e2fsprogs, python3, openssl, libuuid, gnutls }:
# NOTE: enough to run `make check` in u-boot's source tree
mkShell {
  name = "u-boot-shell";
  nativeBuildInputs = [
    gnumake
    bison
    flex
    swig
    lz4
    armTrustedFirmwareTools
    e2fsprogs
    (python3.withPackages (p: with p; [
      filelock
      libfdt
      pycryptodomex
      pyelftools
      pygit2
      pytest
      pytest-xdist
      requests
      setuptools
    ]))
  ];
  buildInputs = [ openssl libuuid gnutls ];
}
