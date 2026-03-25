#!/bin/bash
printf "Minesweeper\nSpace Cadet Pinball\nMS Paint" | wofi --dmenu --prompt "Choose App" \
| xargs -I{} bash -c 'case "$0" in "Minesweeper") wine GIT/APPS/winmine.exe ;; "Space Cadet Pinball") spacecadetpinball ;; "MS Paint") wine GIT/APPS/mspaint.exe ;; esac' {}
