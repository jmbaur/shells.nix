{ mkShell
, gnumake
, bison
, flex
, swig
, lz4
, armTrustedFirmwareTools
, e2fsprogs
, SDL2
, cbfstool
, efitools
, sbsigntool
, gptfdisk
, guestfs-tools
, python3
, openssl
, libuuid
, gnutls
}:
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
    SDL2
    cbfstool
    efitools
    sbsigntool
    gptfdisk
    guestfs-tools
    # TODO(jared): use test/py/requirements.txt
    (python3.withPackages (p: with p; [
      coverage
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
