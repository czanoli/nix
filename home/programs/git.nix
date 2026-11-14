{
  config,
  options,
  pkgs,
  lib,
  vars,
  ...
}:
{
  programs.git = {
    enable = true;
    lfs.enable = true;

    settings = {
      user = {
        name = vars.firstName;
        email = vars.email;
      };

      init.defaultBranch = "main";
      pull.rebase = true;
      push.autoSetupRemote = true;
    };
  };
}
