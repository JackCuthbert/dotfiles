# Source installed zplug
source ~/.zplug/init.zsh

# Support async operations
zplug "mafredri/zsh-async", \
  from:github,\
  use:"async.zsh"

# Prompt theme
zplug "sindresorhus/pure", \
  use:pure.zsh, \
  from:github, \
  as:theme

# Fix last command with `fuck`
zplug "plugins/thefuck", \
  from:oh-my-zsh

# NOTE: Currently borked
# zplug "mfaerevaag/wd", \
#   as:command, \
#   use:"wd.sh", \
#   hook-load:"wd() { . $ZPLUG_REPOS/mfaerevaag/wd/wd.sh }"

zplug "zsh-users/zsh-history-substring-search", \
  defer:3

zplug "zsh-users/zsh-syntax-highlighting", \
  defer:2

zplug "zsh-users/zsh-completions"

zplug "zsh-users/zsh-autosuggestions"

zplug "djui/alias-tips"

zstyle ":completion:*" matcher-list "m:{a-zA-Z}={A-Za-z}"

# Load plugins
zplug load

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
