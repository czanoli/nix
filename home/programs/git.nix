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

    userName = vars.firstName;
    userEmail = vars.email;

    extraConfig = {
      init = {
        defaultBranch = "main";
      };
      pull = {
        rebase = true;
      };
      push = {
        autoSetupRemote = true;
      };
    };
  };
}
