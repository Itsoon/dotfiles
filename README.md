# dotfile

<div align="center">
<img src="https://img.shields.io/github/last-commit/Itsoon-xyz/Dotfile?color=%23c4a7e7&style=for-the-badge&labelColor=1a1b1f">
<img src="https://img.shields.io/github/repo-size/Itsoon-xyz/Dotfile?color=%23c4a7e7&style=for-the-badge&labelColor=1a1b1f">
<img src="https://img.shields.io/github/stars/Itsoon-xyz/Dotfile?color=%23c4a7e7&style=for-the-badge&labelColor=1a1b1f">
</div>

> [!IMPORTANT]  
> Compatible with arch based distro laptop and desktop computers

## Features

- Login and lock screen
- Date and time + day of the week
- Network manager/editor
- Bluetooth pairing
- Volume, and brightness buttons key binding
- Print Screen button key binding to screen tools (screenshot, colorpicker)
- Battery/Power status
- Power menu
- App launcher (rofi)
- Notification
- Screen display indicator for caps lock for volume and microphone

## Table of Contents :

- [Applications](#application)
  - [General Application](#general-application)
  - [Settings Application](#settings-application)
- [Installation](#installation)
  - [Dependencies](#dependencies)
  - [Setup](#setup)
- [Commands](#commands)
- [Useful links](#useful-links)

---

## Application

### General Application

| browser            | [brave](https://aur.archlinux.org/packages/brave-bin) & [firefox](https://archlinux.org/packages/?name=firefox) |
| ------------------ | --------------------------------------------------------------------------------------------------------------- |
| code editor        | [visual studio code](https://aur.archlinux.org/packages/visual-studio-code-bin) & [nvchad](https://nvchad.com/) |
| file manager       | [nemo](https://github.com/linuxmint/nemo) & [ranger](https://github.com/ranger/ranger)                          |
| writing app        | [obsidian](https://obsidian.md/)                                                                                |
| messaging          | [discord](https://discord.com/) & [telegram](https://telegram.org/) & [signal](https://signal.org/)             |
| image viewer       | [feh](https://wiki.archlinux.org/title/feh)                                                                     |
| music player       | [spotify](https://aur.archlinux.org/packages/spotify) & [amberol](https://aur.archlinux.org/packages/amberol)   |
| video player       | [mpv](https://archlinux.org/packages/?name=mpv)                                                                 |
| video editor       | [davinci resolve](https://wiki.archlinux.org/title/DaVinci_Resolve)                                             |
| photo editor       | [krita](https://krita.org/) & [GIMP](https://www.gimp.org/) & [inkscape](https://inkscape.org/)                 |
| git GUI client     | [github desktop](https://desktop.github.com/)                                                                   |
| process viewer     | [btop](https://github.com/aristocratos/btop) & [htop](https://htop.dev/)                                        |
| pdf - ebook viewer | [zathura](https://wiki.archlinux.org/title/zathura)                                                             |

#### AUR

```shell
brave-bin spotify amberol visual-studio-code-bin github-desktop-bin nvchad-git
```

#### Pacman

```shell
feh firefox mpv nemo ranger krita gimp inkscape obsidian discord telegram-desktop signal-desktop htop btop zathura zathura-pdf-mupdf
```

#### Visual Studio Code

Copy [settings.json](/visual%20studio%20code/settings.json) to this path

```shell
/home/odin/.config/Code/User/
```

###### look at [#commands](#Commands) for help

#### Discord

- [better discord](https://aur.archlinux.org/packages/betterdiscord-installer)
  `.config/BetterDiscord/themes/`

#### Spotify

- [spicetify](https://spicetify.app/docs/advanced-usage/installation)

  - clone [spicetify themes](https://github.com/spicetify/spicetify-themes) and take the **text** theme or search the Marketplace for the **text** theme

- [spotify tui](https://github.com/Rigellute/spotify-tui)

#### Davinci Resolve - amd gpu

1. Install the version you wish :

free : `bash davinci-resolve` or `bash davinci-resolve-beta`

premium : `bash davinci-resolve-studio` or `bash davinci-resolve-studio-beta`

2. Install libs

```shell
log4cxx amdgpu-pro-oglp libxcrypt-compat amdgpu-pro-installer rocm-openCL
```

---

### Settings Application

| bluetooth manager   | [blueman](https://wiki.archlinux.org/title/Blueman)                              |
| ------------------- | -------------------------------------------------------------------------------- |
| network manager     | [network manager GUI](https://archlinux.org/packages/?name=nm-connection-editor) |
| volume control      | [pavucontrol](https://archlinux.org/packages/extra/x86_64/pavucontrol/)          |
| audio effects       | [easy effects](https://archlinux.org/packages/extra/x86_64/easyeffects/)         |
| GTK settings editor | [nwg look](https://aur.archlinux.org/packages/nwg-look)                          |

#### AUR

```shell
nwg-look
```

#### Pacman

```shell
nm-connection-editor blueman pavucontrol easyeffects
```

---

## Installation

### Dependencies

`hyprland` : wayland compositor

`sddm` : graphical login program

`swaylock-effects` : lock screen

`hyprpaper` : wallpaper

`hyprshot` : screenshots

`hyprpicker` : wayland color picker

`hyprsome` : awesome-like workspaces for hyprland

`dunst` : notifications

`rofi` : app launcher & powermenu

`waybar` : customizable wayland bar

`zsh` : shell

`playerctl` : mpris media player command-line controller

`brightnessctl` : backlight

`swayosd` : volume - brightness

`polkit-gnome` : polkit authentication agent

##### AUR

```shell
logo-ls swaylock-effects hyprpicker swayosd-git
```

##### Pacman

```shell
hyprland hyprpaper sddm dunst rofi zsh playerctl waybar brightnessctl easyeffects alsa-utils xdg-desktop-portal-hyprland polkit-gnome
```

##### Fonts (pacman)

```shell
ttf-jetbrains-mono-nerd otf-firamono-nerd ttf-fantasque-nerd ttf-font-awesome ttf-iosevka-nerd ttf-nerd-fonts-symbols-common
```

##### Cargo

```shell
cargo install hyprsome
```

###### [see hyprsome doc](https://github.com/sopa0/hyprsome)

### Other dependencies

> (dependencies that are sometimes missing and create problems)

pacman

```shell
xorg-xhost
```

---

### Setup

#### Sddm

Copy [sugar-candy](/sddm/sugar-candy/) to this path :

```shell
/usr/share/sddm/themes/
```

###### look at [#commands](#Commands) for help

##### Modify sddm settings :

```shell
sudo nvim /usr/lib/sddm/sddm.conf.d/default.conf
```

edit section [Theme]

for example :

[Theme]

Current=name_theme

to list available themes :

```shell
ls /usr/share/sddm/themes/
```

#### Cursor

Set cursor with :

```shell
hyprctl setcursor WhiteSur Cursors 24
```

#### Zsh

Make it your default shell :

```shell
chsh -s $(which zsh)
```

[powerlevel10k](https://github.com/romkatv/powerlevel10k) :

```shell
yay -S --noconfirm zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```

#### Dunst

Copy [dunstrc](/dunst/dunstrc) to this path :

```shell
/etc/dunst/
```

###### look at [#commands](#Commands) for help

#### Grub theme

Run this [script](/grub/install.sh)

Then add the following line :

```shell
GRUB_THEME="/usr/share/grub/themes/Tela/theme.txt"
```

to

```shell
/etc/default/grub
```

#### SwayOSD

SwayOSD LibInput Backend :

```shell
sudo systemctl enable --now swayosd-libinput-backend.service
```

#### Hyprsome

[Refer to hyprsome doc](https://github.com/sopa0/hyprsome)

---

## Commands

Copy :

```shell
cp -r /path/to/file/source /path/to/file/destination
```

or rsync for copying with status information

```shell
rsync -r --progress /path/to/file/source /path/to/file/destination
```

or with progress bar status information

```shell
rsync -r --info=progress2 /path/to/file/source /path/to/file/destination
```

Move :

```shell
mv /path/to/file/source /path/to/file/destination
```

Clone a specific branch :

```shell
git clone -b <branchname> --single-branch <remote-repo-url>
```

Available fonts lists :

```shell
ls .local/share/fonts/
```

or

```shell
ls /usr/share/fonts/
```

---

## Useful links

- [color picker](https://coolors.co/color-picker)

- [doc mankier](https://www.mankier.com/) collection of documentation

---

## Related documentation

- [hyprland](https://wiki.hyprland.org/)
- [rofi](https://github.com/davatorium/rofi/wiki)
- [ranger](https://github.com/ranger/ranger/wiki)
- [spicetify](https://spicetify.app/docs/advanced-usage/installation)
- [better discord](https://docs.betterdiscord.app/)
- [swayidle github](https://github.com/swaywm/swayidle/blob/master/swayidle.1.scd) - [swayidle arch](https://man.archlinux.org/man/swayidle.1)
- [swaylock effects](https://github.com/mortie/swaylock-effects/blob/master/swaylock.1.scd)
- [swayosd](https://github.com/ErikReider/SwayOSD)
- [waybar](https://github.com/Alexays/Waybar/wiki)
- [nvchad](https://nvchad.com/docs/quickstart/install)
- [nerdfont](https://www.nerdfonts.com/)
- [btop++](https://github.com/aristocratos/btop)
- [hyprsome](https://github.com/sopa0/hyprsome)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [archlinux](https://wiki.archlinux.org/)
- [endeavouros](https://discovery.endeavouros.com/)
