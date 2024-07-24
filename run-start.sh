

set -eux pipefail

echo "inside run-start.sh"

echo "checking coreutils in nix store"
ls /nix/store/dhv5gh89him9a7ddr56cqg87zfkmjihp-coreutils-9.5/bin/

echo "checking elixir in nix store"
ls /nix/store/40x31mj5vcaar1sd3w239jpsrgwk9rrj-elixir-1.16.3/bin/


devbox run run-custom-bash


echo "running say-hello to exercise init hook"
devbox run say-hello

#sysctl -n kernel.sysctl_restrict_interp
#sysctl -n fs.protected_hardlinks
#sysctl -n fs.protected_symlinks
#sysctl -n kernel.sysctl_hardened_usercopy



devbox run which-mix

devbox run start
