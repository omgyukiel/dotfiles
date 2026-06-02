# LazyVim

LazyVim is a curated Neovim setup. It gives you plugin management, file search, LSP support, completion, formatting hooks, git UI integrations, Treesitter syntax parsing, and sensible defaults.

## Open It

```bash
nvim
nvim file.txt
nvim .
```

## First Commands

Inside Neovim:

```text
:Lazy        plugin manager
:Lazy sync   install/update configured plugins
:Mason       language/tool installer
:checkhealth health report
```

## Core Movement

| Key | Action |
|---|---|
| `h/j/k/l` | left/down/up/right |
| `i` | insert mode |
| `Esc` | normal mode |
| `:w` | save |
| `:q` | quit |
| `:wq` | save and quit |
| `u` | undo |
| `CTRL + r` | redo |

## LazyVim Defaults To Learn

| Key | Action |
|---|---|
| `Space` | leader key |
| `Space Space` | find files |
| `Space /` | search text |
| `Space e` | file explorer |
| `Space gg` | LazyGit |
| `gcc` | comment line |
| `Space u m` | toggle rendered Markdown |
| `Space c p` | toggle Markdown browser preview |

## Markdown Reading

Markdown support is enabled through LazyVim's markdown extra.

| Key | Action |
|---|---|
| `Space u m` | toggle inline rendered Markdown |
| `Space c p` | open/close browser preview for current Markdown file |
| `Space u w` | toggle word wrap |

## Dotfiles Location

The live config is a symlink:

```bash
~/.config/nvim -> ~/dotfiles/home/.config/nvim
```

Custom edits should go in:

```bash
~/.config/nvim/lua/config/keymaps.lua
~/.config/nvim/lua/config/options.lua
~/.config/nvim/lua/plugins/
```

Avoid editing generated plugin files under `~/.local/share/nvim`.
