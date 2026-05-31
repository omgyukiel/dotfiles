# Dotfiles

Personal Linux/HyDE configuration.

This repo intentionally tracks user-owned overrides, not the whole home directory and not generated HyDE state.

## What Is Tracked

- `home/.config/hypr/userprefs.conf` - personal Hyprland overrides.
- `home/.config/kitty/kitty.conf` - Kitty user config.
- `home/.config/zsh/user.zsh` - HyDE Zsh user customizations.
- `home/.tmux.conf` - tmux copy mode and terminal workflow.
- `home/.config/waybar/user-style.css` - Waybar user CSS overrides.
- `packages/` - package manifests.
- `docs/` - personal workflow notes.

## What Is Not Tracked

- Browser profiles.
- Login/session tokens.
- `~/.cache`.
- HyDE generated Wallbash output.
- `~/.config/cfg_backups`.
- Full app state for Spotify, Discord/Vesktop, Steam, etc.

## Install On A New Machine

Review first:

```bash
./install.sh --dry-run
```

Apply symlinks:

```bash
./install.sh
```

This script backs up existing files before replacing them with symlinks.

## Package Manifests

Refresh package lists on the source machine:

```bash
pacman -Qqe > packages/pacman-explicit.txt
pacman -Qqm > packages/aur.txt
flatpak list --app --columns=application > packages/flatpak-apps.txt
```

On a new Arch machine, install packages selectively. Do not blindly install every package until you understand the list.

Official repo packages:

```bash
sudo pacman -S --needed - < packages/pacman-explicit.txt
```

AUR packages:

```bash
yay -S --needed - < packages/aur.txt
```

Flatpak apps:

```bash
xargs -r flatpak install -y flathub < packages/flatpak-apps.txt
```

## Zsh Aliases

For this HyDE setup, put aliases and shell customizations in:

```bash
~/.config/zsh/user.zsh
```

HyDE uses `ZDOTDIR=~/.config/zsh`, so `~/.zshrc` is not the best long-term place for portable aliases.
