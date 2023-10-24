#!/bin/bash

source ./scripts/functions.sh
if [ $? -ne 0 ]; then
    echo "Error: failed to source functions.sh, please execute from $(dirname $(realpath $0))..."
    exit 1
fi

# set variables
Zsh_rc="$HOME/.zshrc"
Zsh_Path="$HOME/.oh-my-zsh"
Zsh_Plugins="$Zsh_Path/custom/plugins"

# install zsh and oh-my-zsh
if ! pkg_installed zsh; then
    sudo pacman -S zsh --noconfirm
fi

if [ ! -d "$Zsh_Path" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# install powerlevel10k theme
if [ ! -d "$Zsh_Path"/custom/themes/powerlevel10k ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$Zsh_Path"/custom/themes/powerlevel10k
fi

# generate plugins from list
while read -r r_plugin; do
    z_plugin=$(echo "$r_plugin" | awk -F '/' '{print $NF}')
    if [ "${r_plugin:0:4}" == "http" ] && [ ! -d "$Zsh_Plugins"/"$z_plugin" ]; then
        sudo git clone "$r_plugin" "$Zsh_Plugins"/"$z_plugin"
    fi
        w_plugin=$($w_plugin "$z_plugin")
done < <(cut -d '#' -f 1 ./lists/zsh_plugin.lst | sed 's/ //g')

# update plugin array in zshrc
echo "intalling zsh plugins --> ${w_plugin}"
sed -i "/^plugins=/c\plugins=($w_plugin)" "$Zsh_rc"