#!/bin/bash
printf "Minesweeper\nSpace Cadet Pinball\nMS Paint" | wofi --dmenu --prompt "Choose App" \
| xargs -I{} bash -c 'case "$0" in "Minesweeper") wine ~/Desktop/APPS/winmine.exe ;; "Space Cadet Pinball") spacecadetpinball ;; "MS Paint") wine ~/Desktop/APPS/mspaint.exe ;; esac' {}
