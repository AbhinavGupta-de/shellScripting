#!/bin/bash


wallpaper_link=$(qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.currentConfigGroup | grep Wallpaper | awk -F= '{print $2}' | tr -d ' ')
wal -i "$wallpaper_link"
