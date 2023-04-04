{ pkgs
, lib
}:
let
  modules = import ./base-modules.nix;

  pkgsModule = { config, ... }: {
    config = {
      _module.args.baseModules = modules;
      _module.args.pkgsPath = lib.mkDefault pkgs.path;
      _module.args.pkgs = lib.mkDefault pkgs;
    };
  };
in
[ pkgsModule ] ++ modules
