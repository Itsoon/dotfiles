# dotfile

<center>
<img src="https://img.shields.io/github/last-commit/Itsoon-xyz/Dotfile?color=%23c4a7e7&style=for-the-badge&labelColor=1a1b1f">
<img src="https://img.shields.io/github/repo-size/Itsoon-xyz/Dotfile?color=%23c4a7e7&style=for-the-badge&labelColor=1a1b1f">
<img src="https://img.shields.io/github/stars/Itsoon-xyz/Dotfile?color=%23c4a7e7&style=for-the-badge&labelColor=1a1b1f">
</center>

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

### Apps

| browser        | [brave](https://aur.archlinux.org/packages/brave-bin) & [firefox](https://archlinux.org/packages/?name=firefox) |
| -------------- | --------------------------------------------------------------------------------------------------------------- |
| code editor    | [visual studio code](https://aur.archlinux.org/packages/visual-studio-code-bin) & [nvchad](https://nvchad.com/) |
| file manager   | [nemo](https://github.com/linuxmint/nemo) & [ranger](https://github.com/ranger/ranger)                          |
| writing app    | [obsidian](https://obsidian.md/)                                                                                |
| messaging      | [discord](https://discord.com/) & [telegram](https://telegram.org/) & [signal](https://signal.org/)             |
| image viewer   | [feh](https://wiki.archlinux.org/title/feh)                                                                     |
| music player   | [spotify](https://aur.archlinux.org/packages/spotify) & [amberol](https://aur.archlinux.org/packages/amberol)   |
| video player   | [mpv](https://archlinux.org/packages/?name=mpv)                                                                 |
| video editor   | [davinci resolve](https://wiki.archlinux.org/title/DaVinci_Resolve)                                             |
| photo editor   | [krita](https://krita.org/) & [GIMP](https://www.gimp.org/) & [inkscape](https://inkscape.org/)                 |
| git GUI client | [github desktop](https://desktop.github.com/)                                                                   |

#### AUR

`brave-bin spotify amberol visual-studio-code-bin github-desktop-bin nvchad-git`

#### Pacman

`feh firefox mpv nemo ranger krita gimp inkscape obsidian discord telegram-desktop signal-desktop`

#### Discord

- [better discord](https://aur.archlinux.org/packages/betterdiscord-installer)
  `.config/BetterDiscord/themes/`

#### Spotify

- [spicetify](https://spicetify.app/docs/advanced-usage/installation)

  - clone [spicetify themes](https://github.com/spicetify/spicetify-themes) and take the **text** theme or search the Marketplace for the **text** theme

- [spotify tui](https://github.com/Rigellute/spotify-tui)

#### Davinci Resolve - amd gpu

1. Install the version you wish :

free : `davinci-resolve` `davinci-resolve-beta`

premium : `davinci-resolve-studio` `davinci-resolve-studio-beta`

2. Install libs

`log4cxx amdgpu-pro-oglp libxcrypt-compat amdgpu-pro-installer rocm-openCL`

### Settings

| bluetooth manager    | [blueman](https://wiki.archlinux.org/title/Blueman)                              |
| -------------------- | -------------------------------------------------------------------------------- |
| network manager      | [network manager GUI](https://archlinux.org/packages/?name=nm-connection-editor) |
| volume control       | [pavucontrol](https://archlinux.org/packages/extra/x86_64/pavucontrol/)          |
| GTK3 settings editor | [nwg look](https://aur.archlinux.org/packages/nwg-look)                          |

#### AUR

`nwg-look`

#### Pacman

`nm-connection-editor blueman pavucontrol`

### How to install

#### Install dependencies

#### AUR

`logo-ls swaylock-effects xfce4-notifyd`

to configure xfce ==> `xfce4-notifyd-config`

#### Pacman

`easyeffects alsa-utils xdg-desktop-portal-hyprland`

- Set cursor with :
  `hyprctl setcursor WhiteSur Cursors 24`

<details>
<summary><h3>Useful links</h3></summary>
[color picker](https://rgbcolorpicker.com/)
</details>

<details>
<summary>kde rice</summary>

### Icons :

`/home/user/.local/share/icons/`

### Color scheme :

`/home/user/.local/share/color-schemes/`

### Konsole

`/home/user/.local/share/konsole/`

### Gtk Application Style

`WhiteSur Dark`

### Sddm

`/usr/share/sddm/themes/`

for move folder use :

`mv /path/to/file/source /path/to/file/destination`

### Splash sreen :

`/home/odin/.local/share/plasma/look-and-feel/`

### Picom

`/etc/xdg/`

</details>
