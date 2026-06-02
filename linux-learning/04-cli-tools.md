# CLI Tools

This file focuses on practical commands you can use immediately.

## Navigation

```bash
pwd                 # show current directory
cd ~/Downloads      # go to Downloads
cd ..               # go up one directory
cd -                # go back to previous directory
```

## `eza` Instead Of `ls`

```bash
eza                 # list files
eza -la             # all files, long view
eza -lah            # human-readable sizes
eza --tree          # tree view
eza --tree -L 2     # tree, 2 levels deep
```

Useful shell habit:

```bash
eza -lah
```

Run it whenever you enter an unfamiliar folder.

## `bat` Instead Of `cat`

Your shell aliases `cat` to `bat` in plain mode.

```bash
bat file.txt
bat ~/.config/hypr/keybindings.conf
bat -n file.txt             # line numbers
bat --paging=always file    # scroll with pager
```

## `rg` Instead Of `grep`

Search text in files:

```bash
rg "SUPER" ~/.config/hypr
rg "kitty" ~/.config
rg -n "bindd" ~/.config/hypr/keybindings.conf
rg -i "bluetooth" ~/.config
```

Search only certain file types:

```bash
rg "bind" -g "*.conf" ~/.config/hypr
```

Show files containing a match:

```bash
rg -l "hyprlock" ~/.config
```

Search hidden files too:

```bash
rg --hidden "alias" ~/.config/zsh
```

## `fzf`

Fuzzy finder. Type pieces of what you want; use arrows; press Enter.

Your HyDE Zsh functions:

```bash
ffcd       # fuzzy cd into a directory below current directory
ffe        # fuzzy open a file in $EDITOR
ffec text  # fuzzy search file contents, then edit selected file
ffch       # fuzzy command history
```

## `btop`

Interactive system monitor:

```bash
btop
```

Use it to inspect CPU, RAM, disks, network, and processes. Press `q` to quit. It is useful when fans spin up or a program feels stuck.

## `duf`

Disk usage:

```bash
duf
duf --only local
```

## `fastfetch`

System summary:

```bash
fastfetch
```

## `jq`

Pretty-print JSON:

```bash
hyprctl activewindow -j | jq
hyprctl clients -j | jq '.[].class'
```

## Hyprland Inspection

```bash
hyprctl monitors
hyprctl workspaces
hyprctl activewindow
hyprctl clients
hyprctl reload
```

JSON versions pair well with `jq`:

```bash
hyprctl workspaces -j | jq
```

## Screenshots Manually

HyDE keybinds are easier, but these explain the pieces:

```bash
grim screenshot.png                  # full screenshot
grim -g "$(slurp)" region.png        # select region
satty --filename region.png          # annotate
```

## Clipboard

HyDE gives you clipboard menus with `SUPER + V` and `SUPER + Shift + V`.

Useful commands:

```bash
wl-copy < file.txt
wl-paste
cliphist list
```

Tmux copy mode is configured to pipe yanked text to `wl-copy`, so text copied with `CTRL + B`, `[`, `v`, `y` should appear in the normal Wayland clipboard and in HyDE's clipboard history.

## Packages With `pacman`

Search:

```bash
pacman -Ss package-name
```

Show installed packages:

```bash
pacman -Q
pacman -Qqe        # explicitly installed
pacman -Qqm        # foreign/AUR packages
```

Install from official repos:

```bash
sudo pacman -S package-name
```

Update system:

```bash
sudo pacman -Syu
```

Remove package:

```bash
sudo pacman -Rns package-name
```

## AUR With `yay`

Search/install:

```bash
yay -Ss package-name
yay -S package-name
```

Update official repos and AUR:

```bash
yay
```

Inspect AUR/foreign packages:

```bash
pacman -Qqm
```

## Services With `systemctl`

System services:

```bash
systemctl status NetworkManager
systemctl status bluetooth
systemctl status docker
```

User services:

```bash
systemctl --user status
systemctl --user status hyde-ipc.service
systemctl --user status hyde-config.service
```

## Logs

Current boot errors:

```bash
journalctl -b -p warning
journalctl -b -p err
```

Follow logs live:

```bash
journalctl -f
```

Hyprland logs often live under:

```bash
~/.cache/hyprland
```
