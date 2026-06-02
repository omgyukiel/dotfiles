# Terminal, Kitty, And Zsh

Your primary terminal is Kitty. HyDE launches it with:

```text
SUPER + T
```

Your shell is Zsh. Most command-line editing shortcuts are shell/readline-style bindings, not Kitty-specific.

## Shell Line Editing

These are the high-value shortcuts to learn first.

| Shortcut | Action |
|---|---|
| `CTRL + A` | Beginning of line |
| `CTRL + E` | End of line |
| `ALT + B` | Back one word |
| `ALT + F` | Forward one word |
| `CTRL + U` | Delete from cursor to beginning of line |
| `CTRL + K` | Delete from cursor to end of line |
| `CTRL + W` | Delete word before cursor |
| `ALT + D` | Delete word after cursor |
| `CTRL + L` | Clear screen |
| `CTRL + C` | Cancel current command/program |
| `CTRL + D` | Exit shell if line is empty |
| `CTRL + R` | Search command history |
| Up/Down | Previous/next command |

Practice:

```bash
echo one two three four five
```

Move around the line with `CTRL + A`, `CTRL + E`, `ALT + B`, `ALT + F`, then delete words with `CTRL + W` and `ALT + D`.

## Zsh And HyDE Customizations

Your relevant files:

- `~/.config/zsh/user.zsh` - personal shell customizations.
- `~/.config/zsh/functions/fzf.zsh` - fuzzy helpers.
- `~/.config/zsh/functions/bat.zsh` - aliases `cat` to `bat`.

Installed aliases/functions include:

| Command | Action |
|---|---|
| `cat` | Actually runs `bat --style=plain --paging=never --color auto` |
| `ffcd` | Fuzzy change directory |
| `ffe` | Fuzzy edit file |
| `ffec` | Fuzzy edit file by searching file contents |
| `ffch` | Fuzzy command history search |
| `srczsh` | Reload personal Zsh customizations |

Smart `cd` is configured with `zoxide` when the package is installed:

| Command | Action |
|---|---|
| `cd path` | Normal directory change |
| `cd partial-name` | Jump to the best matching directory you have visited before |
| `cdi partial-name` | Pick interactively from matching directories |

Install it with:

```bash
sudo pacman -S --needed zoxide
```

After installing, open a new shell or run:

```bash
srczsh
```

## Kitty Basics

Common Kitty defaults:

| Shortcut | Action |
|---|---|
| `CTRL + Shift + C` | Copy selected text |
| `CTRL + Shift + V` | Paste |
| `CTRL + Shift + T` | New tab |
| `CTRL + Shift + Q` | Close tab/window |
| `CTRL + Shift + Right/Left` | Next/previous tab |
| `CTRL + Shift + Enter` | New Kitty window/split in current tab |
| `CTRL + Shift + ]` / `[` | Next/previous Kitty window |
| `CTRL + Shift + L` | Next layout |
| `CTRL + Shift + +` | Increase font size |
| `CTRL + Shift + -` | Decrease font size |
| `CTRL + Shift + Backspace` | Reset font size |
| `CTRL + Shift + H` | Show scrollback in pager |

Kitty hints show a temporary label overlay so you can choose visible text without dragging the mouse.

| Shortcut | Action |
|---|---|
| `CTRL + Shift + E` | Hint/open URL |
| `CTRL + Shift + P`, then `L` | Pick a visible line and insert it |
| `CTRL + Shift + P`, then `W` | Pick a visible word and insert it |
| `CTRL + Shift + P`, then `F` | Pick a visible path and insert it |
| `CTRL + Shift + P`, then `H` | Pick a visible hash and insert it |
| `CTRL + Shift + P`, then `N` | Pick file:line and open it |

Your `~/.config/kitty/kitty.conf` currently includes HyDE config and sets:

- tab bar at bottom
- powerline tab style
- font size `9.0`
- `CaskaydiaCove Nerd Font Mono`
- padding from HyDE config

Note: Kitty's scrollback pager uses `less` by default. If `CTRL + Shift + H` fails with a missing pager, install it:

```bash
sudo pacman -S --needed less
```

## Hyprland Windows Vs Kitty Splits Vs Tmux

There are three levels of organization:

| Level | Tool | Use it for |
|---|---|---|
| Desktop windows | Hyprland | Arrange apps and terminal windows across workspaces |
| Terminal tabs/splits | Kitty | Multiple shells in one terminal window |
| Persistent terminal sessions | `tmux` | Keep long-running terminal layouts alive |

Recommended path:

1. Use Hyprland for desktop windows and workspaces.
2. Use `tmux` as the default developer workspace inside Kitty.
3. Use Kitty tabs/splits for quick throwaway shells, not long-running project layouts.

Your Hyprland-level Vim window mappings use `SUPER + H/J/K/L`. These are compositor shortcuts, so they are not terminal text-editing shortcuts and should not interfere with normal Zsh, Vim, Neovim, or Kitty behavior inside the terminal.

## Minimal Tmux Workflow

Start:

```bash
tmux
```

Core shortcuts use prefix `CTRL + B`.

| Shortcut | Action |
|---|---|
| `CTRL + B`, then `%` | Vertical split |
| `CTRL + B`, then `"` | Horizontal split |
| `CTRL + B`, then `|` | Side-by-side split |
| `CTRL + B`, then `-` | Top/bottom split |
| `CTRL + B`, then arrow | Move between panes |
| `CTRL + B`, then `h/j/k/l` | Move between panes with Vim directions |
| `ALT + h/j/k/l` | Move between panes without prefix |
| `CTRL + B`, then `x` | Close pane |
| `CTRL + B`, then `c` | New tmux window |
| `CTRL + B`, then `n/p` | Next/previous tmux window |
| `CTRL + B`, then `d` | Detach session |

Return later:

```bash
tmux attach
```

This machine now has `~/.tmux.conf` configured for Vim-style copy mode:

| Shortcut | Action |
|---|---|
| `CTRL + B`, then `[` | Enter copy mode |
| `h/j/k/l` | Move cursor |
| `v` | Start visual selection |
| `V` | Select current line |
| `y` | Copy selection to Wayland clipboard and leave copy mode |
| `Enter` | Copy selection to Wayland clipboard and leave copy mode |
| `q` or `Escape` | Exit copy mode |

After editing `~/.tmux.conf`, reload it inside an existing tmux session:

```bash
tmux source-file ~/.tmux.conf
```

## Good Terminal Habits

- Use `CTRL + C` when a command is stuck.
- Use `pwd` to see where you are.
- Use `ls`/`eza` before destructive commands.
- Prefer `mkdir -p folder/name` when creating nested folders.
- Use Tab completion constantly.
- Use `cd partial-name` after installing `zoxide` instead of typing long paths.
- Use `CTRL + R` or `ffch` instead of retyping long commands.
