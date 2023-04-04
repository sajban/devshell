[
  ./back-compat.nix
  ./commands.nix
  ./devshell.nix
  ./env.nix
  ./modules-docs.nix
  {
    # Configure modules-docs
    config.modules-docs.roots = [{
      url = "https://github.com/numtide/devshell";
      path = toString ../.;
      branch = "main";
    }];
  }
]
