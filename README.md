# dotfile

<div align="center">
<img src="https://img.shields.io/github/last-commit/Itsoon-xyz/Dotfile?color=%23c4a7e7&style=for-the-badge&labelColor=1a1b1f">
<img src="https://img.shields.io/github/repo-size/Itsoon-xyz/Dotfile?color=%23c4a7e7&style=for-the-badge&labelColor=1a1b1f">
<img src="https://img.shields.io/github/stars/Itsoon-xyz/Dotfile?color=%23c4a7e7&style=for-the-badge&labelColor=1a1b1f">
</div>

> [!IMPORTANT]  
> Compatible with arch based distro laptop and desktop computers

### Features

- Login and lock screen
- Date and time + day of the week
- Network manager/editor
- Bluetooth pairing
- Volume, and brightness buttons key binding
- Print Screen button key binding to screen tools (screenshot, colorpicker)
- Battery/Power status

<details>
<summary><h3>Preview Screenshots</h3></summary>

![screenshot](/assets/screenshot.png)

</details>

<details open>
<summary><h3>Apps</h3></summary>

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

</details>

<details open>
<summary><h3>Settings apps</h3></summary>

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

</details>

<details open>
<summary><h3>How to install</h3></summary>

#### Install dependencies

`hyprland` : wayland compositor

`sddm` : graphical login program

`swaylock-effects` : lock screen

`hyprpaper` : wallpaper

`hyprshot` : screenshots

`hyprpicker` : wayland color picker

`dunst` : notifications

`rofi` : app launcher & powermenu

`waybar` : customizable wayland bar

`zsh` : shell

`playerctl` : mpris media player command-line controller

`brightnessctl` : backlight

`swayosd` : volume - brightness

`polkit-gnome` : polkit authentication agent

#### AUR

```shell
logo-ls swaylock-effects hyprpicker swayosd-git
```

#### Pacman

```shell
hyprland hyprpaper sddm dunst rofi zsh playerctl waybar brightnessctl easyeffects alsa-utils xdg-desktop-portal-hyprland polkit-gnome
```

#### Fonts

```shell
ttf-jetbrains-mono-nerd otf-firamono-nerd ttf-fantasque-nerd ttf-font-awesome ttf-iosevka-nerd ttf-nerd-fonts-symbols-common
```

---

</details>

<details open>
<summary><h3>Post installation</h3></summary>

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

</details>

<details>
<summary><h3>Commands</h3></summary>

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

</details>

#### Other dependencies

pacman

```shell
xorg-xhost
```

<details>
<summary><h3>Wallpaper Source</h3></summary>

![kusunoki-masashige](/wallpaper/kusunoki-masashige-monochrome.jpg)
![kusunoki-masashige](/wallpaper/kusunoki-masashige.jpg)
[flickr](https://www.flickr.com/photos/epler/527822294/in/photostream/) [Kusunoki_masashige](https://commons.m.wikimedia.org/wiki/File:Kusunoki_masashige.jpg) + [The_Course_of_Empire_Destruction](https://commons.wikimedia.org/wiki/File:Cole_Thomas_The_Course_of_Empire_Destruction_1836.jpg)

![Kusunoki_masashige](https://upload.wikimedia.org/wikipedia/commons/5/51/Kusunoki_masashige.jpg)
![Thomas_The_Course_of_Empire_Destruction](https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Cole_Thomas_The_Course_of_Empire_Destruction_1836.jpg/1280px-Cole_Thomas_The_Course_of_Empire_Destruction_1836.jpg)

</details>

<details>
<summary><h3>Useful links</h3></summary>

[color picker](https://rgbcolorpicker.com/)

[doc mankier](https://www.mankier.com/)

</details>
