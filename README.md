# Usage

Run this to get the shell you want (e.g. a shell to build the linux kernel
with):

```console
nix develop github:jmbaur/shells.nix#shells.linux
```

Getting a shell for cross-compiling should also work out of the box. The same
example as above for building the linux kernel for an aarch64 target should look
like:

```console
nix develop github:jmbaur/shells.nix#pkgsCross.aarch64-multiplatform.shells.linux
```
