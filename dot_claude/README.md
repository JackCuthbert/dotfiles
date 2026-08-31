# Claude Code

Notes on this directory. Chezmoi ignores this file, so it is not installed.

## settings.json drifts

Claude Code writes to `~/.claude/settings.json` itself. It adds keys and it
reorders them. `chezmoi status` therefore reports the file as modified after the
application changes anything.

To accept the version that the application wrote:

```sh
chezmoi add ~/.claude/settings.json
```

Run `chezmoi diff` before `chezmoi apply`. If the source is behind the live
file, `apply` reverts the keys that Claude Code set.

## Plugins and marketplaces

`private_settings.json` records two keys:

- `enabledPlugins` — the plugins that are switched on.
- `extraKnownMarketplaces` — where a plugin comes from.

Only third-party marketplaces need an entry. Claude Code installs the official
marketplace on the first run, so `claude-plugins-official` is absent by design.

## Reply style

`CLAUDE.md` names the `simple-english` skill instead of listing the ASD-STE100
rules. The skill owns those rules. Three rules stay in `CLAUDE.md` because the
skill does not cover them: reply length, humour, and truthfulness.
