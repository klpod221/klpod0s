#!/bin/bash

source ./scripts/functions.sh
if [ $? -ne 0 ]; then
    echo "Error: failed to source functions.sh, please execute from $(dirname $(realpath $0))..."
    exit 1
fi

find "$CloneDir" -type l | while read -r slink
do
    read_slink=$(readlink "$slink")
    fixd_slink=$(echo "$read_slink" | awk -F '/.config/' '{print $NF}')
    linkd_file=$(echo "$slink" | awk -F '/.config/' '{print $NF}')
    echo "linking $HOME/.config/$linkd_file --> $HOME/.config/$fixd_slink..."
    ln -fs $HOME/.config/$fixd_slink $HOME/.config/$linkd_file
done

if printenv HYPRLAND_INSTANCE_SIGNATURE &> /dev/null
    then
    echo "reloading hyprland..."
    hyprctl reload
fi

