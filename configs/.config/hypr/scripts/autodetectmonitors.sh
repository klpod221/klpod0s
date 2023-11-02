#!/bin/bash

list=$(xrandr --query | sed '1d' | awk -F'connected' '{print $1}')
monitor_name=$(xrandr --query | grep " connected" | awk '{print $1}')

monitor=()

for i in ${list}; do
    # if i is monitor name
    for j in ${monitor_name}; do
        if [[ "${i}" == "${j}" ]]; then
            monitor+=("${i}")
            break
        fi
    done

    # if i is resolution
    if [[ "${i}" =~ ^[0-9]+x[0-9]+$ ]]; then
        monitor[-1]+=" ${i}"
        continue
    fi

    i=$(echo "${i}" | sed 's/*//g' | sed 's/+//g' | awk '{printf "%.0f", $1}')
    # if i is number and != 0
    if [[ "${i}" =~ ^[0-9]+$ ]] && [[ "${i}" != "0" ]]; then
        monitor[-1]+="@${i}"
    fi
done

hyprland_monitor=()
primary_pos="right"

for i in "${monitor[@]}"; do
    hyprland_monitor+=("monitor = ")
    hyprland_monitor[-1]+=$(echo "${i}" | awk -F' ' '{print $1}')
    hyprland_monitor[-1]+=", "
    hyprland_monitor[-1]+=$(echo "${i}" | awk -F' ' '{print $2}')
    hyprland_monitor[-1]+=", "
    # if monitor is eDP-* (laptop monitor) and primary_pos is "left" or "right"
    if [[ "${i}" =~ ^(eDP-).*$ ]]; then
        if [[ "${primary_pos}" == "left" ]]; then
            hyprland_monitor[-1]+="0x0, "
        elif [[ "${primary_pos}" == "right" ]]; then
            hyprland_monitor[-1]+="1920x0, "
        fi
    else
        hyprland_monitor[-1]+="0x0, "
    fi

    hyprland_monitor[-1]+="1"
done

monitor_config_file="${HOME}/.config/hypr/monitors.conf"
echo "" > "${monitor_config_file}"

for i in "${hyprland_monitor[@]}"; do
    echo "${i}" >> "${monitor_config_file}"
done
