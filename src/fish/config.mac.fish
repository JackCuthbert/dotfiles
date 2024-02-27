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
mise activate fish | source
set -gx DIRENV_LOG_FORMAT && direnv hook fish | source
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


#   _____          _____
# _/ ____\________/ ____\
# \   __\\___   /\   __\
#  |  |   /    /  |  |
#  |__|  /_____ \ |__|
#              \/
# requires `ghq get git@github.com:tinted-theming/base16-fzf.git`
source ~/Ghq/github.com/tinted-theming/base16-fzf/fish/base16-ayu-mirage.fish


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
