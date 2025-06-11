{
  config,
  options,
  pkgs,
  ...
}:
{
  programs.ssh = {
    enable = true;
    addKeysToAgent = "yes";
    matchBlocks = {
      "*" = {
        setEnv = {
          TERM = "xterm-256color";
        };
      };

      "euler" = {
        hostname = "euler.ethz.ch";
        user = "czanoli";
      };

      "student-cluster" = {
        hostname = "student-cluster.inf.ethz.ch";
        user = "czanoli";
      };

      "luca-gpu" = {
        hostname = "100.66.235.1";
        user = "tatiana";
      };

      "3dv-luca-gpu" = {
        hostname = "100.66.235.1";
        user = "cvision";
      };

      "eulergt" = {
        hostname = "euler.ethz.ch";
        user = "gtavernini";
        identityFile = "~/.ssh/euler_3dv_team";
      };

    };
  };
  services.ssh-agent = {
    enable = true;
  };
}
