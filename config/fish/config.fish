#         ____ ____
# ___  __/_   /_   |
# \  \/  /|   ||   |
#  >    < |   ||   |
# /__/\_ \|___||___|
#       \/
if status is-login
    if test -z "$DISPLAY" -a -z "$INITIAL_SETUP" -a "$XDG_VTNR" = 1
        exec startx
    end
end

# .__       .__  __
# |__| ____ |__|/  |_
# |  |/    \|  \   __\
# |  |   |  \  ||  |
# |__|___|  /__||__|
#         \/
starship init fish | source
zoxide init fish | source
direnv hook fish | source
thefuck --alias | source
source "$HOME/.local/share/google-cloud-sdk/path.fish.inc"
source "$HOME/.asdf/asdf.fish"

#   __  .__
# _/  |_|  |__   ____   _____   ____
# \   __\  |  \_/ __ \ /     \_/ __ \
#  |  | |   Y  \  ___/|  Y Y  \  ___/
#  |__| |___|  /\___  >__|_|  /\___  >
#            \/     \/      \/     \/
if status is-interactive
    set -l onedark_options '-b'

    if set -q VIM
        # Using from vim/neovim.
        set onedark_options "-256"
    end

    set_onedark $onedark_options
end

#   _____.__       .__
# _/ ____\__| _____|  |__
# \   __\|  |/  ___/  |  \
#  |  |  |  |\___ \|   Y  \
#  |__|  |__/____  >___|  /
#                \/     \/
set -g fish_greeting # Disable greeting

#   ____   _______  __
# _/ __ \ /    \  \/ /
# \  ___/|   |  \   /
#  \___  >___|  /\_/
#      \/     \/
set -gx GOPATH "$HOME/go"
set -gx EDITOR "nvim"
set -gx TERMINAL "alacritty"

set -gx MOZ_USE_XINPUT2 "1"    # Use pixel-perfect scrolling in firefox
set -gx WINIT_HIDPI_FACTOR "1" # Disable scaling for alacritty

# Path
fish_add_path "$HOME/bin"        # fresh bin path
fish_add_path "$HOME/.cargo/bin" # rust path
fish_add_path "$GOPATH/bin"      # go path

# thefuck
set -gx THEFUCK_REQUIRE_CONFIRMATION "false"
set -gx THEFUCK_EXCLUDE_RULES "git_pull:git_push"

# fzf
set -gx FZF_DEFAULT_COMMAND "fd --type f --color=never --hidden"
set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
set -gx FZF_ALT_C_COMMAND "fd --type d . --color=never --hidden"
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_COMPLETE 3

#        .__  .__
# _____  |  | |__|____    ______
# \__  \ |  | |  \__  \  /  ___/
#  / __ \|  |_|  |/ __ \_\___ \
# (____  /____/__(____  /____  >
#      \/             \/     \/
alias :q='exit'
alias :wq='exit'
alias :x='exit'
alias c='docker-compose'
alias d='docker'
alias da='direnv allow'
alias http="xh"
alias f="zi"
alias g="git"
alias l="exa --group-directories-first -gl"
alias la="l -a"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
