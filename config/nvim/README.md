# Neovim config

## Packer

Install packer via AUR: [nvim-packer-git](https://aur.archlinux.org/packages/nvim-packer-git/)

## Coc config

Edit config in `./coc-settings.json`, this is linked to
`~/.config/nvim/coc-settings.json`.

```
:CocInstall coc-prettier coc-eslint coc-tsserver coc-json
```

## Treesitter config

```
:TSInstall javascript typescript tsx json markdown vim lua
```
