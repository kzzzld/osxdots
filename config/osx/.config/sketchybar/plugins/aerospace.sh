#!/usr/bin/env bash

# Forced updates and reloads do not include the workspace-change payload.
focused_workspace="${FOCUSED_WORKSPACE:-}"
if [ -z "$focused_workspace" ]; then
  focused_workspace="$(aerospace list-workspaces --focused 2>/dev/null)" || exit 0
fi
[ -n "$focused_workspace" ] || exit 0

if [ "$1" = "$focused_workspace" ]; then
  sketchybar --set "$NAME" background.drawing=on
else
  sketchybar --set "$NAME" background.drawing=off
fi
