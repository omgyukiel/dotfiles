# Cheat Sheet

## HyDE / Hyprland

| Shortcut | Action |
|---|---|
| `SUPER + /` | Keybind help |
| `SUPER + T` | Terminal |
| `SUPER + A` | App launcher |
| `SUPER + E` | File manager |
| `SUPER + B` | Browser |
| `SUPER + C` | Editor |
| `SUPER + Q` | Close window |
| `SUPER + H/J/K/L` | Focus left/down/up/right |
| `SUPER + arrows` | Focus windows, original fallback |
| `SUPER + Shift + arrows` | Resize |
| `SUPER + R`, then `H/J/K/L` | Resize left/down/up/right |
| `SUPER + CTRL + Shift + arrows` | Move window |
| `SUPER + Shift + H/J/K/L` | Move window left/down/up/right |
| `SUPER + W` | Float/tile |
| `SUPER + Alt + J` | Toggle split |
| `SUPER + G` | Toggle group |
| `SUPER + CTRL + G` | Group mode |
| `SUPER + 1..0` | Workspace 1..10 |
| `SUPER + Shift + 1..0` | Move window to workspace |
| `SUPER + Alt + 1..0` | Move window silently |
| `SUPER + S` | Toggle scratchpad |
| `SUPER + Shift + S` | Move window to scratchpad |
| `SUPER + P` | Region screenshot |
| `SUPER + V` | Clipboard |
| `SUPER + Alt + L` | Lock |
| `SUPER + Alt + K` | Keyboard layout |
| `CTRL + ALT + Delete` | Logout menu |

## Shell Editing

| Shortcut | Action |
|---|---|
| `CTRL + A` | Start of line |
| `CTRL + E` | End of line |
| `ALT + B` | Back word |
| `ALT + F` | Forward word |
| `CTRL + W` | Delete previous word |
| `ALT + D` | Delete next word |
| `CTRL + U` | Delete to start |
| `CTRL + K` | Delete to end |
| `CTRL + L` | Clear screen |
| `CTRL + R` | Search history |
| `CTRL + C` | Cancel |
| `CTRL + D` | Exit shell |

## Daily Commands

```bash
pwd
eza -lah
cd ..
bat file
rg "text" path
ffcd
ffe
ffec text
btop
duf
fastfetch
```

## Kitty And Tmux Copy

```text
CTRL + Shift + H      Kitty scrollback pager
CTRL + Shift + /      Kitty scrollback search
CTRL + B, [           tmux copy mode
h/j/k/l               move in tmux copy mode
v                     start tmux selection
V                     select tmux line
y                     copy tmux selection to clipboard
q or Escape           exit tmux copy mode
```

## Package Commands

```bash
pacman -Qqe          # explicitly installed
pacman -Qqm          # AUR/foreign packages
pacman -Ss name      # search official repos
yay -Ss name         # search official repos + AUR
yay                  # update system + AUR
sudo pacman -S name  # install official package
sudo pacman -Rns name
```

## Hyprland Commands

```bash
hyprctl monitors
hyprctl workspaces
hyprctl clients
hyprctl activewindow
hyprctl reload
```

## Files To Edit

```bash
~/.config/hypr/userprefs.conf
~/.config/zsh/user.zsh
~/.config/kitty/kitty.conf
```

## Current Personal Hyprland Overrides

```ini
natural_scroll = yes
SUPER + H/J/K/L = focus left/down/up/right
SUPER + Shift + H/J/K/L = move window left/down/up/right
SUPER + R, then H/J/K/L = resize left/down/up/right
q/Escape/Enter = exit resize mode
SUPER + CTRL + G, then H/J/K/L = group/move window left/down/up/right
SUPER + CTRL + G, then O = move window out of group
SUPER + CTRL + G, then T = lock/unlock active group
```
