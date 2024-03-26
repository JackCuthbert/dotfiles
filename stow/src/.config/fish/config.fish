# generate headings: `figlet -f graffiti your_text`

# .__                         ___.
# |  |__   ____   _____   ____\_ |_________   ______  _  __
# |  |  \ /  _ \ /     \_/ __ \| __ \_  __ \_/ __ \ \/ \/ /
# |   Y  (  <_> )  Y Y  \  ___/| \_\ \  | \/\  ___/\     /
# |___|  /\____/|__|_|  /\___  >___  /__|    \___  >\/\_/
#      \/             \/     \/    \/            \/
fish_add_path "/opt/homebrew/bin"

#             ___.             __                 __    
#   __________\_ |__   _______/  |______    ____ |  | __
#  /  _ \_  __ \ __ \ /  ___/\   __\__  \ _/ ___\|  |/ /
# (  <_> )  | \/ \_\ \\___ \  |  |  / __ \\  \___|    < 
#  \____/|__|  |___  /____  > |__| (____  /\___  >__|_ \
#                  \/     \/            \/     \/     \/
fish_add_path ~/.orbstack/bin

# .__       .__  __
# |__| ____ |__|/  |_
# |  |/    \|  \   __\
# |  |   |  \  ||  |
# |__|___|  /__||__|
#         \/
starship init fish | source
mise activate fish | source
direnv hook fish | source
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
source ~/Code/github.com/tinted-theming/base16-fzf/fish/base16-ayu-mirage.fish

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
alias l="eza --group-directories-first -gl"
alias la="l -a"

# version control
alias g="git"

# editing
alias v="nvim"