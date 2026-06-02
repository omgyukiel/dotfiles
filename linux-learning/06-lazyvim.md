# LazyVim

LazyVim is your Neovim setup. It is installed at:

```bash
~/.config/nvim
```

On this machine, that path is a symlink into your dotfiles repo:

```bash
~/dotfiles/home/.config/nvim
```

## Open It

```bash
nvim
nvim file.txt
nvim .
```

## First Commands Inside Neovim

| Command | Action |
|---|---|
| `:Lazy` | Open plugin manager |
| `:Lazy sync` | Install/update plugins |
| `:Mason` | Install language servers and formatters |
| `:checkhealth` | Health report |

## Basic Keys

| Key | Action |
|---|---|
| `h/j/k/l` | Move left/down/up/right |
| `i` | Insert mode |
| `Esc` | Normal mode |
| `:w` | Save |
| `:q` | Quit |
| `:wq` | Save and quit |
| `u` | Undo |
| `CTRL + r` | Redo |

## LazyVim Keys To Learn First

| Key | Action |
|---|---|
| `Space` | Leader key |
| `Space Space` | Find files |
| `Space /` | Search text |
| `Space e` | File explorer |
| `Space gg` | LazyGit |
| `gcc` | Comment line |

## Useful Files To Edit

```bash
~/.config/nvim/lua/config/options.lua
~/.config/nvim/lua/config/keymaps.lua
~/.config/nvim/lua/plugins/
```

Avoid editing generated plugin state under:

```bash
~/.local/share/nvim
```

## Recommended Packages

Some helpers are still worth installing for the full LazyVim experience:

```bash
sudo pacman -S --needed fd nodejs npm lazygit
```

Already present on this machine: `nvim`, `ripgrep`, `gcc`, `make`, `unzip`, and `git`.
