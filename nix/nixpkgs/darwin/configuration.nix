{ pkgs, ... }:

{
  users.users.jack = {
    home = "/Users/jack";
    shell = pkgs.fish;
  };

  environment = {
    shells = [
      pkgs.fish
    ];
    variables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
    };
    systemPackages = [
      # Utils / required everywhere
      pkgs.git
      pkgs.fzf

      # Docker support
      pkgs.colima
      pkgs.docker-client
    ];
  };

  programs = {
    fish.enable = true;
  };

  # Auto upgrade nix package and the daemon service.
  services = {
    nix-daemon.enable = true;
  };

  nix = {
    package = pkgs.nix;
    gc = {
      automatic = true;
      interval.Day = 7;
      options = "--delete-older-than 7d";
    };
    extraOptions = ''
      auto-optimise-store = true
      experimental-features = nix-command flakes
    '';
  };

  system = {
    defaults = {
      NSGlobalDomain = {
        KeyRepeat = 1;
        NSAutomaticCapitalizationEnabled = false;
        NSAutomaticSpellingCorrectionEnabled = false;
      };
    };

    # Since it's not possible to declare default shell, run this command after build
    activationScripts.postActivation.text = ''
      sudo chsh -s ${pkgs.fish}/bin/fish jack
    '';

    stateVersion = 4;
  };
}
