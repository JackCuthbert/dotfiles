# generate headings: `figlet -f graffiti your_text`

# .__       .__  __
# |__| ____ |__|/  |_
# |  |/    \|  \   __\
# |  |   |  \  ||  |
# |__|___|  /__||__|
#         \/
starship init fish | source

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
