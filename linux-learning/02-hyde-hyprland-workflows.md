# HyDE / Hyprland Workflows

These shortcuts come from `~/.config/hypr/keybindings.conf` and the HyDE `KEYBINDINGS.md`.

`SUPER` means the Windows/Command key.

## First Shortcuts To Memorize

| Shortcut | Action |
|---|---|
| `SUPER + /` | Show keybinding hints |
| `SUPER + T` | Open terminal |
| `SUPER + A` | App launcher |
| `SUPER + E` | File manager |
| `SUPER + B` | Browser |
| `SUPER + C` | Code editor |
| `SUPER + Q` | Close focused window |
| `SUPER + Alt + L` | Lock screen |
| `CTRL + ALT + Delete` | Logout menu |

## Window Focus And Layout

| Shortcut | Action |
|---|---|
| `SUPER + H/J/K/L` | Focus left/down/up/right |
| `SUPER + Left/Right/Up/Down` | Focus window in that direction, original fallback |
| `ALT + Tab` | Cycle focus |
| `SUPER + W` | Toggle floating for focused window |
| `SUPER + Alt + J` | Toggle split direction |
| `SUPER + R` | Enter resize mode |
| `Shift + F11` | Toggle fullscreen |
| `SUPER + Shift + F` | Pin focused window |
| `SUPER + G` | Toggle group |
| `SUPER + CTRL + H/L` | Move backward/forward inside a group |
| `SUPER + CTRL + G` | Enter group mode |
| `SUPER + Alt + L` | Lock screen |
| `SUPER + Alt + K` | Toggle keyboard layout |

Hyprland does not create "panes" inside a terminal by default. It creates tiled windows. If you press `SUPER + T` twice, you get two terminal windows tiled by Hyprland. Use `SUPER + arrows` to move focus between them.

This machine now also has Vim-style focus navigation. Use `SUPER + H/J/K/L` as your primary window focus controls. The old arrow bindings are still available.

For true terminal panes inside one terminal window, use `tmux` as the default developer workspace. Kitty layouts are still useful for quick throwaway shells, but `tmux` is better for persistent project sessions that you can detach and reattach.

## Groups

Hyprland groups are tabbed containers. They are the closest built-in equivalent to Aerospace stacks/tabs.

| Shortcut | Action |
|---|---|
| `SUPER + G` | Turn focused window into a group, or ungroup it |
| `SUPER + CTRL + H/L` | Previous/next window inside the active group |
| `SUPER + CTRL + G` | Enter group mode |
| `H/J/K/L` while in group mode | Move/group focused window left/down/up/right |
| `O` while in group mode | Move focused window out of group |
| `T` while in group mode | Lock/unlock active group |
| `q`, `Escape`, or `Enter` while in group mode | Exit group mode |

Example: add VLC to a Discord group.

1. Focus Discord.
2. Press `SUPER + G` to make it a group.
3. Open VLC.
4. Focus VLC.
5. Press `SUPER + CTRL + G` to enter group mode.
6. Press `H/J/K/L` in the direction of the Discord group.
7. Press `q` to leave group mode.

`movewindoworgroup` is the Hyprland dispatcher behind group mode. It moves the focused window into a group in the chosen direction when one exists; otherwise it behaves like directional window movement.

## Move And Resize Windows

| Shortcut | Action |
|---|---|
| `SUPER + Shift + Left/Right/Up/Down` | Resize focused window |
| `SUPER + R`, then `H/J/K/L` | Resize left/down/up/right |
| `q`, `Escape`, or `Enter` while in resize mode | Exit resize mode |
| `SUPER + CTRL + Shift + Left/Right/Up/Down` | Move focused tiled window, or nudge floating window |
| `SUPER + Shift + H/J/K/L` | Move focused tiled window, or nudge floating window, left/down/up/right |
| `SUPER + left mouse drag` | Move window |
| `SUPER + right mouse drag` | Resize window |
| `SUPER + Z` then drag | Move window |
| `SUPER + X` then drag | Resize window |

## Workspaces

Think of workspaces as separate desks.

| Shortcut | Action |
|---|---|
| `SUPER + 1` through `SUPER + 0` | Switch to workspace 1 through 10 |
| `SUPER + CTRL + Right/Left` | Next/previous relative workspace |
| `SUPER + CTRL + Down` | Nearest empty workspace |
| `SUPER + mouse wheel` | Move through existing workspaces |

## Move Windows Between Workspaces

| Shortcut | Action |
|---|---|
| `SUPER + Shift + 1` through `0` | Move focused window to workspace |
| `SUPER + Alt + 1` through `0` | Move focused window silently, without following it |
| `SUPER + CTRL + Alt + Right/Left` | Move focused window to next/previous workspace |

Daily habit:

1. Put browser on workspace 1.
2. Put terminals/editor on workspace 2.
3. Put chat/music/system monitors on workspace 3.
4. Use `SUPER + Shift + number` to clean up misplaced windows.

## Scratchpad

Scratchpad is a hidden special workspace.

| Shortcut | Action |
|---|---|
| `SUPER + Shift + S` | Move focused window to scratchpad |
| `SUPER + Alt + S` | Move focused window to scratchpad silently |
| `SUPER + S` | Toggle scratchpad |

Good uses: temporary terminal, notes, calculator, music player.

## Launchers And Menus

| Shortcut | Action |
|---|---|
| `SUPER + A` | App finder |
| `SUPER + Tab` | Window switcher |
| `SUPER + Shift + E` | File finder |
| `SUPER + V` | Clipboard picker |
| `SUPER + Shift + V` | Clipboard manager |
| `SUPER + comma` | Emoji picker |
| `SUPER + period` | Glyph picker |
| `SUPER + Shift + A` | Select Rofi launcher style |

Rofi workflow:

1. Press `SUPER + A`.
2. Type a few letters.
3. Press Enter.
4. Do not browse menus manually unless search fails.

## Screenshots And Color Picker

| Shortcut | Action |
|---|---|
| `SUPER + P` | Select region screenshot |
| `SUPER + CTRL + P` | Freeze screen, then select region |
| `SUPER + Alt + P` | Screenshot current monitor |
| `Print` | Screenshot all monitors |
| `SUPER + Shift + P` | Color picker, copies hex color |

## Theming And Wallpaper

| Shortcut | Action |
|---|---|
| `SUPER + Alt + Right/Left` | Next/previous wallpaper |
| `SUPER + Shift + W` | Wallpaper selector |
| `SUPER + Shift + T` | Theme selector |
| `SUPER + Shift + R` | Wallbash mode selector |
| `SUPER + Alt + Up/Down` | Next/previous Waybar layout |
| `SUPER + Shift + Y` | Animation selector |
| `SUPER + Shift + U` | Hyprlock layout selector |

## Hardware Controls

| Shortcut | Action |
|---|---|
| `F10` or mute key | Toggle output mute |
| `F11/F12` or volume keys | Lower/raise volume |
| Mic mute key | Toggle microphone mute |
| Brightness keys | Lower/raise brightness |
| Media keys | Play/pause/next/previous |
| `SUPER + CTRL + M` | Mute/unmute active window |
| `SUPER + Alt + K` | Toggle keyboard layout |
| `SUPER + Alt + G` | Game mode |
| `SUPER + Shift + G` | Game launcher |

## Recovery

If Hyprland feels broken:

1. Press `SUPER + /` and verify the keybind exists.
2. Try `SUPER + Shift + T` or `SUPER + Shift + W` if a theme/wallpaper change looks wrong.
3. Open a terminal with `SUPER + T`.
4. Reload Hyprland:

```bash
hyprctl reload
```

5. Log out with `CTRL + ALT + Delete`.
6. At SDDM, choose KDE Plasma as fallback if needed.

## Personal Changes Added

These live in `~/.config/hypr/userprefs.conf`, not in HyDE's default keybind file.

Natural touchpad scrolling:

```ini
input {
    touchpad {
        natural_scroll = yes
    }
}
```

Vim-style window navigation:

| Shortcut | Action |
|---|---|
| `SUPER + H` | Focus left |
| `SUPER + J` | Focus down |
| `SUPER + K` | Focus up |
| `SUPER + L` | Focus right |
| `SUPER + Shift + H/J/K/L` | Move window left/down/up/right |
| `SUPER + R`, then `H/J/K/L` | Resize left/down/up/right |
| `q`, `Escape`, or `Enter` while in resize mode | Exit resize mode |
| `SUPER + Alt + J` | Toggle split, moved from `SUPER + J` |
| `SUPER + Alt + K` | Toggle keyboard layout, moved from `SUPER + K` |
| `SUPER + Alt + L` | Lock screen, moved from `SUPER + L` |
| `SUPER + CTRL + G`, then `H/J/K/L` | Group/move window left/down/up/right |
| `SUPER + CTRL + G`, then `O` | Move window out of group |
| `SUPER + CTRL + G`, then `T` | Lock/unlock active group |

These mappings do not conflict with Kitty or Zsh defaults because terminal apps normally receive `CTRL`, `ALT`, and text keys, while `SUPER` keybinds are captured by Hyprland at the compositor level.

Wallbash note: Wallbash is HyDE's wallpaper-driven color system. It can generate matching colors for HyDE pieces such as Waybar, Kitty, Rofi, GTK/Qt themes, and other supported app themes from your current wallpaper. `SUPER + Shift + R` opens the Wallbash mode selector; `SUPER + R` is separate and now opens resize mode.
