# tmux

Notes on this directory. Chezmoi ignores this file, so it is not installed.

## Plugins

`tmux.conf` pins the plugins with `@plugin` lines and TPM installs them:

- `catppuccin/tmux` — the theme, pinned to a tag.
- `tmux-plugins/tmux-cpu` — supplies the cpu and ram status modules.

TPM cannot install itself. `.chezmoiscripts/run_onchange_after_install-tmux-plugins.sh.tmpl`
clones it on the first apply, then installs the pins. The script keys on a hash
of `tmux.conf`, so a changed pin re-runs the install.

`~/.config/tmux/plugins/` holds the clones. That is machine state, not config,
so `.chezmoiignore` excludes it. To update the plugins later, press `prefix U`
in tmux.
