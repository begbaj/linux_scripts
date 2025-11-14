#!/bin/sh
set -eu

bin_path="$HOME/.local/bin"
local_path="$HOME/.local/share/linux_scripts"
config_path="$HOME/.config/linux_scripts"

configs="envs"
scripts="bscripts extra/histrm extra/pdfsplit extra/bright extra/kde_restore_config extra/dmenuwine extra/tmuxhandle avenv/avenv extra/nospaces extra/myip extra/dirln"

case "${1:-}" in
install)
  mkdir -p "$bin_path" "$config_path" "$local_path"

  for c in $configs; do
    cp -- "configs/$c" "$config_path"
    echo "installed config: $c"
  done

  for s in $scripts; do
    cp -- "scripts/$s" "$bin_path"
    echo "installed: $s"
  done
  ;;

uninstall)
  for c in $configs; do
    rm -f -- "$config_path/$c" || true
    echo "removed config: $c"
  done

  for s in $scripts; do
    base=$(basename "$s")
    rm -f -- "$bin_path/$base" || true
    echo "removed: $base"
  done
  ;;

*)
  echo "usage: $0 {install|uninstall}" >&2
  exit 1
  ;;
esac
