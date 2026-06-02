#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
home_dir="${HOME}"
dry_run=0

if [[ "${1:-}" == "--dry-run" ]]; then
  dry_run=1
fi

link_file() {
  local source_rel="$1"
  local target="$2"
  local source="${repo_dir}/${source_rel}"

  if [[ ! -e "${source}" ]]; then
    echo "missing source: ${source}" >&2
    return 1
  fi

  echo "link ${target} -> ${source}"

  if (( dry_run )); then
    return 0
  fi

  mkdir -p "$(dirname -- "${target}")"

  if [[ -L "${target}" ]]; then
    rm -- "${target}"
  elif [[ -e "${target}" ]]; then
    mv -- "${target}" "${target}.bak.$(date +%Y%m%d-%H%M%S)"
  fi

  ln -s -- "${source}" "${target}"
}

link_file "home/.config/hypr/userprefs.conf" "${home_dir}/.config/hypr/userprefs.conf"
link_file "home/.config/hyde/config.toml" "${home_dir}/.config/hyde/config.toml"
link_file "home/.config/kitty/kitty.conf" "${home_dir}/.config/kitty/kitty.conf"
link_file "home/.config/nvim" "${home_dir}/.config/nvim"
link_file "home/.config/swaync/config.json" "${home_dir}/.config/swaync/config.json"
link_file "home/.config/swaync/style.css" "${home_dir}/.config/swaync/style.css"
link_file "home/.config/zsh/user.zsh" "${home_dir}/.config/zsh/user.zsh"
link_file "home/.config/waybar/user-style.css" "${home_dir}/.config/waybar/user-style.css"
link_file "home/.config/waybar/layouts/workspace-media.jsonc" "${home_dir}/.config/waybar/layouts/workspace-media.jsonc"
link_file "home/.local/bin/media-menu" "${home_dir}/.local/bin/media-menu"
link_file "home/.local/bin/screenshot-notify" "${home_dir}/.local/bin/screenshot-notify"
link_file "home/.tmux.conf" "${home_dir}/.tmux.conf"

echo "done"
