# Prerequisites

This repo tracks personal overrides for an existing Arch + HyDE setup. It does
not install Arch, HyDE, packages, app profiles, or secrets.

## Required Base

- Arch Linux installed.
- HyDE installed and booting into Hyprland.
- `hyde-shell` available on `PATH`.
- Kitty installed.
- Zsh configured through HyDE with `ZDOTDIR=~/.config/zsh`.
- Git available for cloning this repo.

## Core Packages

Install these before applying the dotfiles:

```bash
sudo pacman -S --needed \
  bat eza fd fzf git jq kitty neovim ripgrep tmux zoxide zsh \
  grim slurp satty wl-clipboard libnotify \
  playerctl rofi swaync waybar
```

Useful optional tools:

```bash
sudo pacman -S --needed cava btop duf fastfetch lazygit nodejs npm gcc make unzip
```

Notes:

- `cava` is a terminal audio visualizer. In this setup it can also feed the
  Waybar `custom/cava` module, which gives the bar a small live music visualizer.
- `playerctl` controls Spotify, browser media, VLC, and other MPRIS-compatible
  players.
- `satty` is the screenshot annotation tool used after HyDE captures a region.
- `swaync` is the notification daemon and notification center.

## New Machine Flow

1. Install Arch Linux.
2. Install HyDE and confirm Hyprland boots normally.
3. Install the required packages above.
4. Clone this repo.
5. Review the symlink plan:

```bash
./install.sh --dry-run
```

6. Apply the dotfiles:

```bash
./install.sh
```

7. Reapply the tracked Waybar layout:

```bash
hyde-shell waybar --set workspace-media
```

8. Sync LazyVim plugins:

```bash
nvim --headless "+Lazy! sync" +qa
```

## What This Does Not Restore

- Browser profiles, cookies, tokens, or passwords.
- Discord, Spotify, Steam, or other app state.
- HyDE generated Wallbash cache.
- Hardware-specific monitor layout.
- Wallpapers unless they are added to this repo later.
- AUR and Flatpak apps unless installed separately.
