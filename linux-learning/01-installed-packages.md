# Installed Packages

This machine is Arch Linux with Hyprland + HyDE as the main desktop and KDE Plasma as a fallback. The inventory below is based on explicitly installed packages from `pacman -Qqe` and AUR/foreign packages from `pacman -Qqm`.

## Desktop Stack

- `hyprland` - Wayland compositor/window manager.
- `uwsm` - session manager used to launch/manage Wayland sessions.
- `xdg-desktop-portal-hyprland` - screen sharing, file chooser, portals for Wayland apps.
- `hyprpolkitagent` - graphical authentication prompts.
- `hypridle` - idle daemon.
- `hyprlock` - lock screen.
- `hyprsunset` - blue light/night color control.
- `hyprpicker` - color picker.
- `hyprquery-git` - query Hyprland/HyDE config values.
- `waybar` - top/bottom status bar.
- `rofi` - app launcher, window switcher, menus.
- `dunst` - notification daemon.
- `wlogout` - logout/shutdown/reboot menu.
- `awww` - wallpaper daemon used by HyDE.
- `swayosd-git` - on-screen display for volume/brightness/caps lock.

## KDE Fallback And GUI Apps

- `plasma-meta` - KDE Plasma desktop fallback.
- `sddm` - display/login manager.
- `dolphin` - graphical file manager.
- `ark` - archive manager.
- `nwg-displays` - monitor layout GUI.
- `nwg-look` - GTK theme GUI.
- `qt5ct`, `qt6ct`, `kvantum`, `kvantum-qt5` - Qt theming.
- `firefox` - browser.
- `code` - code editor.

## Terminal And Shell

- `kitty` - primary terminal emulator in your HyDE keybinds.
- `wezterm` - another terminal emulator, also installed.
- `zsh` - shell.
- `starship` - prompt.
- `tmux` - terminal multiplexer.
- `vim`, `neovim`, `nano` - terminal editors.
- `fastfetch` - system summary shown in terminal startup.

## Modern CLI Tools

- `ripgrep` / command `rg` - fast text search.
- `ripgrep-all` / command `rga` - search PDFs, archives, documents, and more.
- `eza` - modern `ls`.
- `bat` - modern `cat` with syntax highlighting.
- `fzf` - fuzzy finder.
- `duf` - modern `df` disk usage display.
- `btop`, `htop` - system monitors.
- `jq` - JSON processor.
- `parallel` - run jobs in parallel.
- `github-cli` / command `gh` - GitHub CLI.
- `uv` - Python package/project tool.
- `openai-codex` - Codex CLI/package.

## Screenshots, Clipboard, Media

- `grim` - Wayland screenshot backend.
- `slurp` - select a screen region.
- `satty` - annotate screenshots.
- `wf-recorder` - screen recording.
- `cliphist` - clipboard history.
- `wl-clip-persist`, `wl-clipboard` - Wayland clipboard support.
- `playerctl` - media playback controls.
- `pamixer`, `pavucontrol` - audio control.
- `pipewire`, `pipewire-alsa`, `pipewire-jack`, `pipewire-pulse`, `wireplumber` - audio/video stack.

## Hardware And Networking

- `networkmanager`, `network-manager-applet`, `wpa_supplicant` - networking.
- `bluez`, `bluez-utils`, `blueman` - Bluetooth.
- `brightnessctl` - brightness control.
- `ddcui` - GUI control for external monitor brightness/contrast via DDC/CI.
- `power-profiles-daemon` - performance/balanced/power saver modes.
- `smartmontools` - disk health.
- `ufw` - firewall.
- `zram-generator` - compressed RAM swap.

## Gaming And Media Apps

- `steam` - gaming.
- `gamemode` - game performance tweaks.
- `mangohud` - FPS/performance overlay.
- `spotify` - music.
- `spicetify-cli` - customize Spotify.
- `cava` - terminal audio visualizer.

## Development, Virtualization, System

- `base`, `base-devel`, `linux`, `linux-headers`, `linux-firmware` - core Arch system.
- `git`, `wget`, `unzip`, `zip` - basic dev/system tools.
- `docker` - containers.
- `vmware-workstation` - virtualization.
- `yay` - AUR helper.
- `chaotic-keyring`, `chaotic-mirrorlist` - Chaotic-AUR repo support.
- GPU/media drivers include `intel-media-driver`, `libva-intel-driver`, `vulkan-intel`, `vulkan-radeon`, `vulkan-nouveau`, `xf86-video-amdgpu`, `xf86-video-ati`, `xf86-video-nouveau`.

## Foreign/AUR Packages

`pacman -Qqm` showed:

```text
ddcui
ddcui-debug
uefitool-debug
wttrbar
wttrbar-debug
yay-debug
```

## Explicit Package List

```text
amd-ucode ark awww base base-devel bat blueman bluez bluez-utils brightnessctl btop cava
chaotic-keyring chaotic-mirrorlist cliphist code ddcui docker dolphin duf dunst efibootmgr
eza fastfetch ffmpegthumbs firefox fzf gamemode git github-cli grim gst-plugin-pipewire
htop hypridle hyprland hyprlock hyprpicker hyprpolkitagent hyprquery-git hyprsunset
imagemagick intel-media-driver jq kitty kvantum kvantum-qt5 libpulse libva-intel-driver
linux linux-firmware linux-headers mangohud nano neovim network-manager-applet
networkmanager noto-fonts noto-fonts-cjk nwg-displays nwg-look openai-codex pacman-contrib
pamixer parallel pavucontrol pipewire pipewire-alsa pipewire-jack pipewire-pulse plasma-meta
playerctl power-profiles-daemon qt5-graphicaleffects qt5-imageformats qt5-quickcontrols
qt5-quickcontrols2 qt5-wayland qt5ct qt6-wayland qt6ct rofi satty sddm slurp smartmontools
sof-firmware spicetify-cli spotify starship steam sudo swayosd-git tmux ttf-jetbrains-mono-nerd
udiskie ufw unzip uv uwsm vim vmware-workstation vulkan-intel vulkan-nouveau vulkan-radeon
waybar wezterm wf-recorder wget wireplumber wl-clip-persist wlogout wpa_supplicant wttrbar
xdg-desktop-portal-hyprland xdg-utils xf86-video-amdgpu xf86-video-ati xf86-video-nouveau
yay yay-debug zip zram-generator zsh
```
