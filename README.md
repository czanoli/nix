To save space, by converting symlinks to hard links:

$ nix-store --optimise

To remove old (>2 days) builds:

$ sudo nix-collect-garbage -d --delete-older-than 2d

To update the whole system:

$ sudo nixos-rebuild switch --upgrade \
  --update-input nixpkgs \
  --update-input nixpkgs-unstable \
  --update-input home-manager \
  --update-input nix-index-database

Other amazing tool for nix daily life:
  https://lazamar.co.uk/nix-versions
to find hashes of nixpkgs where a given version of a package was packaged.