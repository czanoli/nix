{
  config,
  options,
  pkgs,
  ...
}:
{

  programs.zsh = {
    enable = true;
    enableCompletion = true;

    prezto = {
      enable = true;
      editor = {
        keymap = "emacs";
      };
      pmodules = [
        "environment"
        "terminal"
        "editor"
        "history"
        "directory"
        "spectrum"
        "utility"
        "completion"
        "prompt"
        "git"
        "syntax-highlighting"
        "autosuggestions"
      ];
      prompt = {
        theme = "skwp";
        pwdLength = "short";
        showReturnVal = true;
      };
    };

    plugins = [
      {
        name = "zsh-nix-shell";
        file = "nix-shell.plugin.zsh";
        src = pkgs.fetchFromGitHub {
          owner = "chisui";
          repo = "zsh-nix-shell";
          rev = "v0.8.0";
          sha256 = "1lzrn0n4fxfcgg65v0qhnj7wnybybqzs4adz7xsrkgmcsr0ii8b7";
        };
      }
    ];
  };
}
