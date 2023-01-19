# generate headings: `figlet -f graffiti your_text`
#
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
direnv hook fish | source
source "$HOME/.local/share/google-cloud-sdk/path.fish.inc"
source "$HOME/.asdf/asdf.fish"

#               .__     
#   ______ _____|  |__  
#  /  ___//  ___/  |  \ 
#  \___ \ \___ \|   Y  \
# /____  >____  >___|  /
#      \/     \/     \/ 
set -x SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/keyring/ssh"

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
set -gx EDITOR "nvim"
set -gx TERMINAL "alacritty"
set -gx MOZ_USE_XINPUT2 "1"    # Use pixel-perfect scrolling in firefox
set -gx WINIT_HIDPI_FACTOR "1" # Disable scaling for alacritty

# Ensure GDK and Firefox use X11, resolves issue with Firefox unable to open
# links without Firefox already being open.
set -gx MOZ_ENABLE_WAYLAND "0"
set -gx GDK_BACKEND "x11"      

#   _____          _____
# _/ ____\________/ ____\
# \   __\\___   /\   __\
#  |  |   /    /  |  |
#  |__|  /_____ \ |__|
#              \/
# github light default theme
set -gx FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS
--color=fg:-1,bg:-1,hl:#0366d6
--color=fg+:#24292e,bg+:#d0d7de,hl+:#2188ff
--color=info:#57606a,prompt:#d73a49,pointer:#6f42c1
--color=marker:#22863a,spinner:#8a63d2,header:#1b7c83"

#               __  .__
# ___________ _/  |_|  |__
# \____ \__  \\   __\  |  \
# |  |_> > __ \|  | |   Y  \
# |   __(____  /__| |___|  /
# |__|       \/          \/
fish_add_path "$HOME/bin"        # fresh bin path
fish_add_path "$GOPATH/bin"      # go path

#        .__  .__
# _____  |  | |__|____    ______
# \__  \ |  | |  \__  \  /  ___/
#  / __ \|  |_|  |/ __ \_\___ \
# (____  /____/__(____  /____  >
#      \/             \/     \/

# docker
alias d='docker'
alias c='docker compose'

# files
alias f="zi"
alias l="exa --group-directories-first -gl"
alias la="l -a"

# version control
alias g="git"

# editing
alias v="nvim"

# mac style clipboard
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
