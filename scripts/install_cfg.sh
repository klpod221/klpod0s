#!/bin/bash

#--------------------------------#
# import variables and functions #
#--------------------------------#
source ./scripts/functions.sh
if [ $? -ne 0 ]; then
    echo "Error: failed to source functions.sh, please execute from $(dirname $(realpath $0))..."
    exit 1
fi

CfgDir=${CloneDir}/configs
BkpDir="$HOME/.config/$(date +'cfg_%y%m%d_%Hh%Mm%Ss')"

if [ -d "$BkpDir" ]; then
    echo "ERROR : $BkpDir exists!"
    exit 1
else
    mkdir -p "$BkpDir"
fi

cat ./lists/install_cfg.lst | while read -r lst; do

    pth=$(echo "$lst" | awk -F '|' '{print $1}')
    cfg=$(echo "$lst" | awk -F '|' '{print $2}')
    pkg=$(echo "$lst" | awk -F '|' '{print $3}')
    pth=$(eval echo "$pth")

    while read -r pkg_chk; do
        if ! pkg_installed "$pkg_chk"; then
            echo "skipping ${cfg}..."
            continue 2
        fi
    done < <(echo "${pkg}" | xargs -n 1)

    echo "${cfg}" | xargs -n 1 | while read -r cfg_chk; do
        tgt=$(echo $pth | sed "s+^${HOME}++g")

        if [ -d "$pth"/"$cfg_chk" ] || [ -f "$pth"/"$cfg_chk" ]; then

            if [ ! -d "$BkpDir""$tgt" ]; then
                mkdir -p "$BkpDir""$tgt"
            fi

            mv "$pth"/"$cfg_chk" "$BkpDir""$tgt"
            echo "config backed up $pth/$cfg_chk --> $BkpDir$tgt..."
        fi

        if [ ! -d "$pth" ]; then
            mkdir -p "$pth"
        fi

        cp -r "$CfgDir""$tgt"/"$cfg_chk" "$pth"
        echo "config installed ${pth} <-- $CfgDir$tgt/$cfg_chk..."
    done

done

touch "${HOME}"/.config/hypr/monitors.conf
touch "${HOME}"/.config/hypr/userprefs.conf

if nvidia_detect; then
    cp "${CfgDir}"/.config/hypr/nvidia.conf "${HOME}"/.config/hypr/nvidia.conf
    echo -e 'source = ~/.config/hypr/nvidia.conf # auto sourced vars for nvidia\n' >>"${HOME}"/.config/hypr/hyprland.conf
fi

./scripts/create_cache.sh
./scripts/install_zsh.sh
./scripts/install_lnk.sh
