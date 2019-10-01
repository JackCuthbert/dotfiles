# Get keychain & GPG running in Linux
eval `keychain --eval --noask -q --agents ssh,gpg id_rsa`
export GPG_TTY=$(tty)

