# Learning Roadmap

This roadmap assumes you are new to Linux and want practical confidence, not theory first.

## Stage 1: Survive The Desktop

Goal: open apps, move windows, recover.

Drills:

1. Press `SUPER + A`, launch Firefox.
2. Press `SUPER + T`, launch Kitty.
3. Press `SUPER + E`, launch Dolphin.
4. Use `SUPER + arrows` to move focus.
5. Use `SUPER + H/J/K/L` to move focus with Vim-style controls.
6. Use `SUPER + 1`, `SUPER + 2`, `SUPER + 3` to switch workspaces.
7. Move Firefox to workspace 1 with `SUPER + Shift + 1`.
8. Move Kitty to workspace 2 with `SUPER + Shift + 2`.
9. Open keybind help with `SUPER + /`.
10. Lock with `SUPER + Alt + L`.
11. Open logout menu with `CTRL + ALT + Delete`.

Do this until it is automatic.

## Stage 2: Terminal Movement

Goal: edit commands without fighting the keyboard.

Drills:

1. Type `echo one two three four five`.
2. Use `CTRL + A` and `CTRL + E`.
3. Use `ALT + B` and `ALT + F`.
4. Use `CTRL + W` to delete a word backward.
5. Use `ALT + D` to delete a word forward.
6. Use `CTRL + U` and `CTRL + K`.
7. Run a few commands, then use `CTRL + R` to find them.
8. Use Tab completion for paths.

## Stage 3: Files And Search

Goal: inspect files and find things quickly.

Drills:

```bash
pwd
eza -lah
cd ~/.config
eza --tree -L 2 hypr
bat ~/.config/hypr/keybindings.conf
rg "SUPER" ~/.config/hypr
rg "clipboard" ~/.config
```

Learn the difference:

- `cd` changes where you are.
- `eza` shows what is there.
- `bat` reads a file.
- `rg` searches many files.
- `ffcd`, `ffe`, `ffec` make navigation/editing fuzzy.

## Stage 4: Windows, Workspaces, Scratchpad

Goal: organize work without thinking.

Suggested layout:

- Workspace 1: browser.
- Workspace 2: terminal/editor.
- Workspace 3: music/chat/system monitor.
- Scratchpad: temporary terminal or notes.

Drills:

1. Open three Kitty windows with `SUPER + T`.
2. Focus them with `SUPER + H/J/K/L`.
3. Toggle one floating with `SUPER + W`.
4. Move one to scratchpad with `SUPER + Shift + S`.
5. Toggle scratchpad with `SUPER + S`.
6. Move windows silently with `SUPER + Alt + number`.
7. Move a tiled window with `SUPER + Shift + H/J/K/L`.
8. Enter resize mode with `SUPER + R`, resize with `H/J/K/L`, then exit with `q`, `Escape`, or `Enter`.
9. Make a group with `SUPER + G`, enter group mode with `SUPER + CTRL + G`, move another window into it with `H/J/K/L`, then exit with `q`.

## Stage 5: System Awareness

Goal: understand what the machine is doing.

Commands:

```bash
btop
duf
fastfetch
systemctl status NetworkManager
systemctl --user status
journalctl -b -p warning
```

Use `btop` when something feels slow. Use `journalctl` when something fails.

## Stage 6: Package Management

Goal: install, update, inspect, and remove software safely.

Drills:

```bash
pacman -Qqe
pacman -Qqm
pacman -Ss package-name
yay -Ss package-name
```

Update habit:

```bash
yay
```

Remove only when you know what the package is:

```bash
sudo pacman -Rns package-name
```

Before removing desktop packages, search what depends on them:

```bash
pacman -Qi package-name
pacman -Qi package-name | bat
```

## Stage 7: Config Editing

Goal: make small changes and know how to undo them.

Safe places to edit:

- `~/.config/hypr/userprefs.conf`
- `~/.config/zsh/user.zsh`
- `~/.config/kitty/kitty.conf`

Workflow:

1. Copy the line you are changing into a comment above it.
2. Make one change.
3. Reload if needed.
4. Test.
5. If broken, revert that one change.

Hyprland reload:

```bash
hyprctl reload
```

## Stage 8: Recovery

Goal: get unstuck.

Checklist:

1. If a command is stuck: `CTRL + C`.
2. If the screen is messy: move to a clean workspace with `SUPER + CTRL + Down`.
3. If a window is misplaced: `SUPER + Shift + number`.
4. If Hyprland config changed: `hyprctl reload`.
5. If logout is needed: `CTRL + ALT + Delete`.
6. If Hyprland is unusable: choose KDE Plasma at the SDDM login screen.

## What To Learn Later

- `tmux` for persistent terminal sessions.
- Git basics.
- Docker basics.
- Shell scripting.
- `systemd` services and timers.
- Firewall basics with `ufw`.
- Backups with snapshots or `rsync`.
