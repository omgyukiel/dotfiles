# Media On HyDE

HyDE controls media through MPRIS using `playerctl` and HyDE helper scripts.

## Spotify

Launch:

```bash
spotify
```

Control:

```bash
playerctl -l
playerctl --player=spotify play-pause
playerctl --player=spotify next
playerctl --player=spotify previous
playerctl --player=spotify metadata
```

HyDE has Spotify integration through:

- `playerctl`
- `spicetify-cli`
- Wallbash Spotify theming
- Waybar `custom/spotify` layouts

## Video Files

VLC is installed as a Flatpak:

```bash
flatpak run org.videolan.VLC ./video.mp4
```

For filenames with spaces:

```bash
flatpak run org.videolan.VLC "my video.mp4"
```

After VLC is running and media is loaded:

```bash
playerctl -l
playerctl play-pause
playerctl metadata
```

For lower-friction CLI playback, install `mpv` later:

```bash
sudo pacman -S mpv
mpv ./video.mp4
```

## Screen Recording

Full screen:

```bash
wf-recorder -f ~/Videos/recording.mp4
```

Selected region:

```bash
wf-recorder -g "$(slurp)" -f ~/Videos/recording.mp4
```

Stop recording with `CTRL + C`.
