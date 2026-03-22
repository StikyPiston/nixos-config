# Todo

## Global

- [x] License the repo (probably MIT or BSD 2-clause)
- [x] Switch from `Lix` back to regular Nix

## home-manager

- [x] Fix typo in home.nix and configs/spylass.nix (spylass -> spyglass)
- [ ] Try `stylix`
- [ ] Set up `wlr-which-key`
- [ ] Re-colour Tmux (make the left-hand side mauve to match the overall accent)

## NixOS

- [ ] Install `asciinema`
- [x] Make home-manager config part of NixOS modules in *flake.nix* (nixosConfigurations."frosties" output)
- [ ] Set garbage collector to only keep 4 generations, instead of deleting generations older than a week
- [x] Remove unneeded packages
- [ ] Fix joycond
- [ ] Unbind `escape` key in Kanata (forces me to use the closer Caps Lock bind)
