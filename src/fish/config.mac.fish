# generate headings: `figlet -f graffiti your_text`

# .__                         ___.
# |  |__   ____   _____   ____\_ |_________   ______  _  __
# |  |  \ /  _ \ /     \_/ __ \| __ \_  __ \_/ __ \ \/ \/ /
# |   Y  (  <_> )  Y Y  \  ___/| \_\ \  | \/\  ___/\     /
# |___|  /\____/|__|_|  /\___  >___  /__|    \___  >\/\_/
#      \/             \/     \/    \/            \/
fish_add_path "/opt/homebrew/bin"

# .__       .__  __
# |__| ____ |__|/  |_
# |  |/    \|  \   __\
# |  |   |  \  ||  |
# |__|___|  /__||__|
#         \/
starship init fish | source
set -gx DIRENV_LOG_FORMAT && direnv hook fish | source
rtx activate fish | source
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"

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

#   _____          _____
# _/ ____\________/ ____\
# \   __\\___   /\   __\
#  |  |   /    /  |  |
#  |__|  /_____ \ |__|
#              \/
# github light default theme
# set -gx FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS
# --color=fg:-1,bg:-1,hl:#0366d6
# --color=fg+:#24292e,bg+:#d0d7de,hl+:#2188ff
# --color=info:#57606a,prompt:#d73a49,pointer:#6f42c1
# --color=marker:#22863a,spinner:#8a63d2,header:#1b7c83"

# dracula theme
# set -gx FZF_DEFAULT_OPTS "--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4"

# rose pine
# set -Ux FZF_DEFAULT_OPTS "
# 	--color=fg:#908caa,bg:#191724,hl:#ebbcba
# 	--color=fg+:#e0def4,bg+:#26233a,hl+:#ebbcba
# 	--color=border:#403d52,header:#31748f,gutter:#191724
# 	--color=spinner:#f6c177,info:#9ccfd8,separator:#403d52
# 	--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"

# catppuccin
set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"


#               __  .__
# ___________ _/  |_|  |__
# \____ \__  \\   __\  |  \
# |  |_> > __ \|  | |   Y  \
# |   __(____  /__| |___|  /
# |__|       \/          \/
fish_add_path "$HOME/bin"        # fresh bin path


#                              .___
# ___  ________ ____  ____   __| _/____
# \  \/ /  ___// ___\/  _ \ / __ |/ __ \
#  \   /\___ \\  \__(  <_> ) /_/ \  ___/
#   \_//____  >\___  >____/\____ |\___  >
#           \/     \/           \/    \/
fish_add_path "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
string match -q "$TERM_PROGRAM" "vscode"
and . (code --locate-shell-integration-path fish)

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
