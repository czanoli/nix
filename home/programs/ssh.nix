{
  config,
  options,
  pkgs,
  ...
}:
{
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;

    settings = {
      "*" = {
        AddKeysToAgent = "yes";
        SetEnv = {
          TERM = "xterm-256color";
        };

        ForwardAgent = false;
        Compression = false;
        ServerAliveInterval = 0;
        ServerAliveCountMax = 3;
        HashKnownHosts = false;
        UserKnownHostsFile = "~/.ssh/known_hosts";
        ControlMaster = "no";
        ControlPath = "~/.ssh/master-%r@%n:%p";
        ControlPersist = "no";
      };

      "euler" = {
        HostName = "euler.ethz.ch";
        User = "czanoli";
      };

      "student-cluster" = {
        HostName = "student-cluster.inf.ethz.ch";
        User = "czanoli";
      };

      "luca-gpu" = {
        HostName = "100.66.235.1";
        User = "tatiana";
      };

      "3dv-luca-gpu" = {
        HostName = "100.66.235.1";
        User = "cvision";
      };

      "eulergt" = {
        HostName = "euler.ethz.ch";
        User = "gtavernini";
        IdentityFile = "~/.ssh/euler_3dv_team";
      };
    };
  };

  services.ssh-agent.enable = true;
}
