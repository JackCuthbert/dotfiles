# Master key ID, long format
export KEYID="6AC6920C97C7E004E7831C150689854D762DF9AF"

# Get keychain & GPG running in Linux
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

eval `keychain --eval --noask -q --agents gpg`
