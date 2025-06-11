{
  config,
  options,
  pkgs,
  vars,
  inputs,
  ...
}:
{
  home.stateVersion = "25.05"; # Do not change
  programs.home-manager.enable = true;

  home.username = vars.user;
  home.homeDirectory = vars.homeDirectory;

  nix = {
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  imports = [
    ./programs/ssh.nix
    ./programs/git.nix
    ./programs/zsh.nix
  ];

  home.packages = with pkgs; [
    zip
    unzip
    xz
    jq

    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg

    imagemagick
    ghostscript

    nixfmt-rfc-style
  ];

  programs.thunderbird = {
    enable = true;
    profiles = { };
  };
  programs.vscode.enable = true;
  programs.direnv.enable = true;

}
