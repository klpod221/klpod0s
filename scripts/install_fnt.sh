#!/bin/bash

#--------------------------------#
# import variables and functions #
#--------------------------------#
source ./scripts/functions.sh
if [ $? -ne 0 ]; then
    echo "Error: failed to source functions.sh, please execute from $(dirname $(realpath $0))..."
    exit 1
fi

cat ./lists/install_fnt.lst | while read -r lst;
do

    fnt=${lst%%|*}
    tgt=${lst#*|}

    if [ ! -d "${tgt}" ]
    then
        mkdir -p ${tgt} || echo "creating the directory as root instead..." && sudo mkdir -p ${tgt}
        echo "${tgt} directory created..."
    fi

    sudo tar -xzf $CloneDir/source/arcs/${fnt}.tar.gz -C ${tgt}/
    echo "uncompressing ${fnt}.tar.gz --> ${tgt}..."

done

echo "rebuilding font cache..."
fc-cache -f
