# Arch + HyDE Learning Pack

Generated for this machine on 2026-05-31.

This folder is a practical map of your current Arch Linux + Hyprland + HyDE setup. It is intentionally workflow-first: learn how to move around, open and organize windows, use the terminal, inspect the system, install packages, and recover when something breaks.

## Files

- [01-installed-packages.md](01-installed-packages.md) - what is installed, grouped by job.
- [02-hyde-hyprland-workflows.md](02-hyde-hyprland-workflows.md) - desktop, windows, workspaces, screenshots, theming.
- [03-terminal-kitty-zsh.md](03-terminal-kitty-zsh.md) - Kitty, shell editing, tabs, scrollback, command history.
- [04-cli-tools.md](04-cli-tools.md) - `rg`, `eza`, `bat`, `fzf`, `btop`, `pacman`, `yay`, and related tools.
- [05-learning-roadmap.md](05-learning-roadmap.md) - drills and learning order.
- [06-lazyvim.md](06-lazyvim.md) - Neovim/LazyVim setup, first commands, and dotfiles location.
- [CHEATSHEET.md](CHEATSHEET.md) - compact daily reference.

## Important Local Configs

- Hyprland main config: `~/.config/hypr/hyprland.conf`
- Hyprland keybinds: `~/.config/hypr/keybindings.conf`
- Your Hyprland overrides: `~/.config/hypr/userprefs.conf`
- Kitty config: `~/.config/kitty/kitty.conf`
- HyDE Kitty base config: `~/.config/kitty/hyde.conf`
- LazyVim config: `~/.config/nvim`
- Zsh customizations: `~/.config/zsh/user.zsh`
- HyDE config: `~/.config/hyde/config.toml`
- Waybar config: `~/.config/waybar/config.jsonc`

## First Rule

When you want to change Hyprland behavior, prefer editing:

```bash
~/.config/hypr/userprefs.conf
```

When you want to change shell behavior, prefer editing:

```bash
~/.config/zsh/user.zsh
```

That keeps your personal changes separate from HyDE-managed defaults.
