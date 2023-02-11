{ pkgs, ... }:

{
  home = {
    packages = [
      pkgs.direnv
      pkgs.asdf-vm
      pkgs.ghq
      pkgs.nixpkgs-fmt
    ];

    stateVersion = "22.11";
  };

  programs = {
    home-manager.enable = true;
    exa.enable = true;

    fish = {
      enable = true;
      shellInit = ''
        ### Add nix binary paths to the PATH
        # Perhaps someday will be fixed in nix or nix-darwin itself
        # See https://github.com/LnL7/nix-darwin/issues/122#issuecomment-1345383219
        if test (uname) = Darwin
          fish_add_path --prepend --global "$HOME/.nix-profile/bin" /nix/var/nix/profiles/default/bin /run/current-system/sw/bin
        end

        # Ensure asdf shims are linked and override macOS native tools
        source "${pkgs.asdf-vm}/share/asdf-vm/asdf.fish"

        # Link VS Code to path
        fish_add_path "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
      '';

      interactiveShellInit = ''
        set -g fish_greeting # Disable greeting
      '';

      shellAliases = {
        g = "git";
        d = "docker";
        c = "docker compose";
        l = "exa --group-directories-first -gl";
        la = "l -a";
        v = "nvim";
      };

      plugins = [
        {
          name = "fish-ghq";
          src = pkgs.fetchFromGitHub {
            owner = "decors";
            repo = "fish-ghq";
            rev = "cafaaabe63c124bf0714f89ec715cfe9ece87fa2";
            sha256 = "sha256-6b1zmjtemNLNPx4qsXtm27AbtjwIZWkzJAo21/aVZzM=";
          };
        }
        {
          name = "fzf.fish";
          src = pkgs.fetchFromGitHub {
            owner = "PatrickF1";
            repo = "fzf.fish";
            rev = "63c8f8e65761295da51029c5b6c9e601571837a1";
            sha256 = "sha256-i9FcuQdmNlJnMWQp7myF3N0tMD/2I0CaMs/PlD8o1gw=";
          };
        }
      ];

      functions = {
        hm = ''
          pushd ~/.dotfiles
          darwin-rebuild switch --flake ./nix
          popd
        '';
      };
    };

    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };

    starship = {
      enable = true;
      settings = {
        add_newline = false;
        character = {
          success_symbol = "[ﬦ](bright-green)";
          error_symbol = "[ﬦ](bright-red)";
          vicmd_symbol = "[ﬦ](bright-green)";
        };
        line_break = {
          disabled = false;
        };
        directory = {
          style = "bright-blue";
        };
        git_metrics = {
          disabled = false;
          format = "([ +$added ]($added_style))([ -$deleted ]($deleted_style))";
          added_style = "bright-green";
          deleted_style = "bright-red";
        };
        git_branch = {
          format = "[$branch(:$remote_branch)]($style) ";
          style = "bright-black";
        };
        git_status = {
          format = "([ $all_status$ahead_behind ]($style))";
          style = "white";
          ahead = "↑";
          behind = "↓";
          diverged = "⇵";
          deleted = "×";
        };
        aws.disabled = true;
        gcloud.disabled = true;
        golang.disabled = true;
        java.disabled = true;
        nodejs.disabled = true;
        package.disabled = true;
        terraform.disabled = true;
      };
    };

    alacritty = {
      enable = true;

      settings.font = {
        size = 16;
        normal = {
          family = "JetBrainsMono Nerd Font";
          style = "Regular";
        };
        bold = {
          family = "JetBrainsMono Nerd Font";
          style = "Bold";
        };
        italic = {
          family = "JetBrainsMono Nerd Font";
          style = "Italic";
        };
        bold_italic = {
          family = "JetBrainsMono Nerd Font";
          style = "Bold Italic";
        };
      };
    };

    git = {
      enable = true;
    };

    neovim = {
      enable = true;
      viAlias = true;
      vimAlias = true;
    };
  };
}
