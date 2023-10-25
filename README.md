# --// klpod0s //--

<p align="center">
  <img width="250" src="https://raw.githubusercontent.com/klpod221/klpod0s/main/source/concepts/arch.svg">   
</p>

## About

This is a fork of [hyprdots](https://github.com/klpod221/klpod0s) with some changes to make it work on my system and to my liking. I have also added some of my own scripts and configs to make it work better for me and maybe for you too.

Thanks to [prasanthrangan](https://github.com/prasanthrangan) for making this awesome dotfiles repo.

### Installation

The installation script is made for Arch, but **may** work on some Arch based distros.  
For Debian, please refer **Senshi111**'s version [here](https://github.com/Senshi111/debian-hyprland-hyprdots).

> **Warning**
>
> Install script will auto-detect nvidia card and install nvidia-dkms drivers for your kernel.  
> Nvidia drm will be enabled in grub, so please [ensure](https://wiki.archlinux.org/title/NVIDIA) your nvidia card supports dkms drivers/hyprland.

After minimal Arch install (with grub), clone and execute -

```shell
pacman -Sy git
git clone https://github.com/klpod221/klpod0s.git ~/klpod0s
cd ~/klpod0s
./install.sh
```

> **Note**
>
> You can also create your own list (for ex. `custom_apps.lst`) with all your favorite apps and pass the file as a parameter to install it -
>
> ```shell
> ./install.sh custom_apps.lst
> ```

Please reboot after the install script completes and takes you to sddm login screen (or black screen) for the first time.  
For more details, please refer [installation.md](https://github.com/klpod221/klpod0s/blob/main/installation.md)

### Theming

To add your own custom theme, please refer [theming.md](https://github.com/klpod221/klpod0s/blob/main/theming.md)

- Available themes

  - [x] Catppuccin-Mocha
  - [x] Catppuccin-Latte
  - [x] Decay-Green
  - [x] Rosé-Pine
  - [x] Tokyo-Night
  - [x] Material-Sakura
  - [x] Graphite-Mono
  - [x] Cyberpunk-Edge
  - [ ] Nordic-Blue (maybe later)

- Contributors themes
  - [x] Frosted-Glass by T-Crypt
  - [x] Gruvbox-Retro by T-Crypt

|                                                Catppuccin-Mocha                                                |
| :------------------------------------------------------------------------------------------------------------: |
| ![Catppuccin-Mocha#1](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_mocha_1.png) |
| ![Catppuccin-Mocha#2](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_mocha_2.png) |

|                                                Catppuccin-Latte                                                |
| :------------------------------------------------------------------------------------------------------------: |
| ![Catppuccin-Latte#1](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_latte_1.png) |
| ![Catppuccin-Latte#2](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_latte_2.png) |

|                                                Decay-Green                                                |
| :-------------------------------------------------------------------------------------------------------: |
| ![Decay-Green#1](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_decay_1.png) |
| ![Decay-Green#2](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_decay_2.png) |

|                                                Rosé-Pine                                                 |
| :------------------------------------------------------------------------------------------------------: |
| ![Rosé-Pine#1](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_rosine_1.png) |
| ![Rosé-Pine#2](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_rosine_2.png) |

|                                                Tokyo-Night                                                |
| :-------------------------------------------------------------------------------------------------------: |
| ![Tokyo-Night#1](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_tokyo_1.png) |
| ![Tokyo-Night#2](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_tokyo_2.png) |

|                                                Material-Sakura                                                |
| :-----------------------------------------------------------------------------------------------------------: |
| ![Material-Sakura#1](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_maura_1.png) |
| ![Material-Sakura#2](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_maura_2.png) |

|                                                Graphite-Mono                                                |
| :---------------------------------------------------------------------------------------------------------: |
| ![Graphite-Mono#1](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_graph_1.png) |
| ![Graphite-Mono#2](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_graph_2.png) |

|                                                Cyberpunk-Edge                                                |
| :----------------------------------------------------------------------------------------------------------: |
| ![Cyberpunk-Edge#1](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_cedge_1.png) |
| ![Cyberpunk-Edge#2](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_cedge_2.png) |

|                                                 Frosted-Glass                                                 |
| :-----------------------------------------------------------------------------------------------------------: |
| ![Frosted-Glass#1](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_frosted_1.png) |
| ![Frosted-Glass#2](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_frosted_2.png) |

|                                                 Gruvbox-Retro                                                 |
| :-----------------------------------------------------------------------------------------------------------: |
| ![Gruvbox-Retro#1](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_gruvbox_1.png) |
| ![Gruvbox-Retro#2](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_gruvbox_2.png) |

<div align = right> <br><br>

[<kbd> <br> Top <br> </kbd>](#-design-by-t2)

</div>

## Styles

|                                              Theme Select                                               |
| :-----------------------------------------------------------------------------------------------------: |
| ![Theme Select](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/theme_select.png) |

|                                              Wallpaper Select                                               |
| :---------------------------------------------------------------------------------------------------------: |
| ![Wallpaper Select](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/walls_select.png) |

|                                               Launcher Style Select                                                |
| :----------------------------------------------------------------------------------------------------------------: |
| ![Launcher Style Select](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/rofi_style_sel.png) |

|                                             Launcher Styles                                             |
| :-----------------------------------------------------------------------------------------------------: |
| ![rofi style#1](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/rofi_style_1.png) |
| ![rofi style#2](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/rofi_style_2.png) |
| ![rofi style#3](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/rofi_style_3.png) |
| ![rofi style#4](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/rofi_style_4.png) |
| ![rofi style#5](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/rofi_style_5.png) |
| ![rofi style#6](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/rofi_style_6.png) |
| ![rofi style#7](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/rofi_style_7.png) |
| ![rofi style#8](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/rofi_style_8.png) |

|                                               Wlogout Menu                                                |
| :-------------------------------------------------------------------------------------------------------: |
| ![Wlogout Menu#1](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/wlog_style_1.png) |
| ![Wlogout Menu#2](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/wlog_style_2.png) |

|                                                Game Launchers                                                |
| :----------------------------------------------------------------------------------------------------------: |
| ![Game Launchers#1](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/game_launch_1.png) |
| ![Game Launchers#2](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/game_launch_2.png) |
| ![Game Launchers#3](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/game_launch_3.png) |
| ![Game Launchers#4](https://raw.githubusercontent.com/klpod221/klpod0s/main/source/assets/game_launch_4.png) |

<div align = right> <br><br>

[<kbd> <br> Top <br> </kbd>](#-design-by-t2)

</div>

## Packages

<table><tr><td>
<code>n</code><br><code>v</code><br><code>i</code><br><code>d</code><br><code>i</code><br><code>a</code></td><td><table>
    <tr><td>linux-headers</td><td>for main kernel (script will auto detect from /usr/lib/modules/)</td></tr>
    <tr><td>linux-zen-headers</td><td>for zen kernel (script will auto detect from /usr/lib/modules/)</td></tr>
    <tr><td>linux-lts-headers</td><td>for lts kernel (script will auto detect from /usr/lib/modules/)</td></tr>
    <tr><td>nvidia-dkms</td><td>nvidia drivers (script will auto detect from lspci -k | grep -A 2 -E "(VGA|3D)")</td></tr>
    <tr><td>nvidia-utils</td><td>nvidia utils (script will auto detect from lspci -k | grep -A 2 -E "(VGA|3D)")</td></tr></table>
</td></tr></table>

<table><tr><td>
<code>u</code><br><code>t</code><br><code>i</code><br><code>l</code><br><code>s</code></td><td><table>
    <tr><td>pipewire</td><td>audio and video server</td></tr>
    <tr><td>pipewire-alsa</td><td>for audio</td></tr>
    <tr><td>pipewire-audio</td><td>for audio</td></tr>
    <tr><td>pipewire-jack</td><td>for audio</td></tr>
    <tr><td>pipewire-pulse</td><td>for audio</td></tr>
    <tr><td>gst-plugin-pipewire</td><td>for audio</td></tr>
    <tr><td>wireplumber</td><td>audio and video server</td></tr>
    <tr><td>networkmanager</td><td>network manager</td></tr>
    <tr><td>network-manager-applet</td><td>nm tray</td></tr>
    <tr><td>bluez</td><td>for bluetooth</td></tr>
    <tr><td>bluez-utils</td><td>for bluetooth</td></tr>
    <tr><td>blueman</td><td>bt tray</td></tr></table>
</td></tr></table>

<table><tr><td>
<code>l</code><br><code>o</code><br><code>g</code><br><code>i</code><br><code>n</code></td><td><table>
    <tr><td>sddm-git</td><td>display manager for login</td></tr>
    <tr><td>qt5-wayland</td><td>for QT wayland XDP</td></tr>
    <tr><td>qt6-wayland</td><td>for QT wayland XDP</td></tr>
    <tr><td>qt5-quickcontrols</td><td>for sddm theme</td></tr>
    <tr><td>qt5-quickcontrols2</td><td>for sddm theme</td></tr>
    <tr><td>qt5-graphicaleffects</td><td>for sddm theme</td></tr></table>
</td></tr></table>

<table><tr><td>
<code>h</code><br><code>y</code><br><code>p</code><br><code>r</code></td><td><table>
    <tr><td>hyprland-git</td><td>main window manager (hyprland-nvidia-git if nvidia card is detected)</td></tr>
    <tr><td>dunst</td><td>graphical notification daemon</td></tr>
    <tr><td>rofi-lbonn-wayland-git</td><td>app launcher</td></tr>
    <tr><td>waybar-hyprland-git</td><td>status bar</td></tr>
    <tr><td>swww</td><td>wallpaper app</td></tr>
    <tr><td>swaylock-effects-git</td><td>lockscreen</td></tr>
    <tr><td>wlogout</td><td>logout screen</td></tr>
    <tr><td>grimblast-git</td><td>screenshot tool</td></tr>
    <tr><td>slurp</td><td>selects region for screenshot/screenshare</td></tr>
    <tr><td>swappy</td><td>screenshot editor</td></tr>
    <tr><td>cliphist</td><td>clipboard manager</td></tr></table>
</td></tr></table>

<table><tr><td>
<code>d</code><br><code>e</code><br><code>p</code><br><code>e</code><br><code>n</code><br><code>d</code><br><code>e</code><br><code>n</code><br><code>c</code><br><code>y</code></td><td><table>
    <tr><td>polkit-kde-agent</td><td>authentication agent</td></tr>
    <tr><td>xdg-desktop-portal-hyprland</td><td>XDG Desktop Portal</td></tr>
    <tr><td>pacman-contrib</td><td>for system update check</td></tr>
    <tr><td>python-pyamdgpuinfo</td><td>for amd gpu info</td></tr>
    <tr><td>parallel</td><td>for parallel processing</td></tr>
    <tr><td>jq</td><td>to read json</td></tr>
    <tr><td>imagemagick</td><td>for image processing</td></tr>
    <tr><td>qt5-imageformats</td><td>for dolphin image thumbnails</td></tr>
    <tr><td>ffmpegthumbs</td><td>for dolphin video thumbnails</td></tr>
    <tr><td>brightnessctl</td><td>brightness control for laptop</td></tr>
    <tr><td>pavucontrol</td><td>audio settings gui</td></tr>
    <tr><td>pamixer</td><td>for waybar audio</td></tr>
    <tr><td>fcitx5</td><td>for input method</td></tr>
    <tr><td>fcitx5-qt</td><td>for input method</td></tr>
    <tr><td>fcitx5-gtk</td><td>for input method</td></tr>
    <tr><td>fcitx5-configtool</td><td>for input method</td></tr></table>
</td></tr></table>

<table><tr><td>
<code>t</code><br><code>h</code><br><code>e</code><br><code>m</code><br><code>e</code></td><td><table>
    <tr><td>nwg-look</td><td>theming GTK apps</td></tr>
    <tr><td>kvantum</td><td>theming QT apps</td></tr>
    <tr><td>qt5ct</td><td>theming QT5 apps</td></tr></table>
</td></tr></table>

<table><tr><td>
<code>a</code><br><code>p</code><br><code>p</code><br><code>s</code></td><td><table>
    <tr><td>firefox</td><td>browser</td></tr>
    <tr><td>brave-bin</td><td>browser</td></tr>
    <tr><td>kitty</td><td>terminal</td></tr>
    <tr><td>neofetch</td><td>fetch tool</td></tr>
    <tr><td>btop</td><td>system monitor</td></tr>
    <tr><td>dolphin</td><td>kde file manager</td></tr>
    <tr><td>visual-studio-code-bin</td><td>gui code editor</td></tr>
    <tr><td>vim</td><td>text editor</td></tr>
    <tr><td>neovim</td><td>text editor</td></tr>
    <tr><td>ark</td><td>kde file archiver</td></tr></table>
</td></tr></table>

<table><tr><td>
    <code>s</code><br><code>h</code><br><code>e</code><br><code>l</code><br><code>l</code></td><td><table>
    <tr><td>zsh</td><td>main shell</td></tr>
    <tr><td>lsd</td><td>colorful file lister</td></tr>
    <tr><td>fzf</td><td>command line fuzzy finder</td></tr>
    <tr><td>cava</td><td>audio visualizer</td></tr>
    <tr><td>pokemon-colorscripts-git</td><td>display pokemon sprites</td></tr></table>
</td></tr></table>

<div align = right> <br><br>

[<kbd> <br> Top <br> </kbd>](#-design-by-t2)

</div>

## Keybindings

| Keys                                                                                                     | Action                                            |
| :------------------------------------------------------------------------------------------------------- | :------------------------------------------------ |
| <kbd>Super</kbd> + <kbd>Q</kbd>                                                                          | quit active/focused window                        |
| <kbd>Alt</kbd> + <kbd>F4</kbd>                                                                           | quit active/focused window                        |
| <kbd>Super</kbd> + <kbd>Del</kbd>                                                                        | quit hyprland session                             |
| <kbd>Super</kbd> + <kbd>W</kbd>                                                                          | toggle window on focus to float                   |
| <kbd>Alt</kbd> + <kbd>Enter</kbd>                                                                        | toggle window on focus to fullscreen              |
| <kbd>Super</kbd> + <kbd>J</kbd>                                                                          | toggle layout                                     |
| <kbd>Super</kbd> + <kbd>G</kbd>                                                                          | toggle window group                               |
| <kbd>Super</kbd> + <kbd>T</kbd>                                                                          | launch kitty terminal                             |
| <kbd>Super</kbd> + <kbd>E</kbd>                                                                          | launch dolphin file explorer                      |
| <kbd>Super</kbd> + <kbd>C</kbd>                                                                          | launch vscode                                     |
| <kbd>Super</kbd> + <kbd>B</kbd>                                                                          | launch brave browser                              |
| <kbd>Super</kbd> + <kbd>A</kbd>                                                                          | launch desktop applications (rofi)                |
| <kbd>Super</kbd> + <kbd>Tab</kbd>                                                                        | switch open applications (rofi)                   |
| <kbd>Super</kbd> + <kbd>R</kbd>                                                                          | browse system files (rofi)                        |
| <kbd>F10</kbd>                                                                                           | mute audio output (toggle)                        |
| <kbd>F11</kbd>                                                                                           | decrease volume (hold)                            |
| <kbd>F12</kbd>                                                                                           | increase volume (hold)                            |
| <kbd>Super</kbd> + <kbd>V</kbd>                                                                          | clipboard history paste                           |
| <kbd>Super</kbd> + <kbd>L</kbd>                                                                          | lock screen                                       |
| <kbd>Super</kbd> + <kbd>Backspace</kbd>                                                                  | logout menu                                       |
| <kbd>Super</kbd> + <kbd>K</kbd>                                                                          | switch keyboard layout                            |
| <kbd>Super</kbd> + <kbd>P</kbd>                                                                          | drag to select area or click on a window to print |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>P</kbd>                                                         | print current screen                              |
| <kbd>Super</kbd> + <kbd>RightClick</kbd>                                                                 | resize the window                                 |
| <kbd>Super</kbd> + <kbd>LeftClick</kbd>                                                                  | change the window position                        |
| <kbd>Super</kbd> + <kbd>MouseScroll</kbd>                                                                | cycle through workspaces                          |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>←</kbd><kbd>→</kbd><kbd>↑</kbd><kbd>↓</kbd>                   | resize windows (hold)                             |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>Ctrl</kbd> + <kbd>←</kbd><kbd>→</kbd><kbd>↑</kbd><kbd>↓</kbd> | move active window within the current workspace   |
| <kbd>Super</kbd> + <kbd>[0-9]</kbd>                                                                      | switch to workspace [0-9]                         |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>[0-9]</kbd>                                                   | move active window to workspace [0-9]             |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>[0-9]</kbd>                                                     | move active window to workspace [0-9] (silently)  |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>S</kbd>                                                         | move window to special workspace                  |
| <kbd>Super</kbd> + <kbd>S</kbd>                                                                          | toogle to special workspace                       |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>G</kbd>                                                         | disable hypr effects for gamemode                 |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>→</kbd>                                                         | next wallpaper                                    |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>←</kbd>                                                         | previous wallpaper                                |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>↑</kbd>                                                         | next waybar mode                                  |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>↓</kbd>                                                         | previous waybar mode                              |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>D</kbd>                                                       | toggle (theme <//> wall) based colors             |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>T</kbd>                                                       | theme select menu                                 |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>W</kbd>                                                       | wallpaper select menu                             |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>A</kbd>                                                       | rofi style select menu                            |

<div align = right> <br><br>

[<kbd> <br> Top <br> </kbd>](#-design-by-t2)

</div>

## Known Issues

- [ ] Few scaling issues with rofi configs, as they are created based on my ultrawide (21:9) display.
- [ ] Random lockscreen crash, refer https://github.com/swaywm/sway/issues/7046
- [ ] Waybar launching rofi breaks mouse input (added `sleep 0.1` as workaround), refer https://github.com/Alexays/Waybar/issues/1850
- [ ] Flatpak QT apps does not follow system theme
