# dotfile

OS: Endeavouros & Arch linux (desktop computer)

Shell: zsh

Desktop environment: Hyprland

Terminal: kitty

### Features

- Login and lock screen
- Date and time + day of the week
- Network manager/editor
- Bluetooth pairing
- Volume, and brightness buttons key binding
- Print Screen button key binding to screen tools (screenshot, colorpicker)
- Battery/Power status

### Apps

| image viewer      | [feh](https://wiki.archlinux.org/title/feh)                                                                     |
| ----------------- | --------------------------------------------------------------------------------------------------------------- |
| browser           | [brave](https://aur.archlinux.org/packages/brave-bin)                                                           |
| code editor       | [visual studio code](https://aur.archlinux.org/packages/visual-studio-code-bin) & [nvchad](https://nvchad.com/) |
| git GUI client    | [github desktop](https://aur.archlinux.org/packages/github-desktop-bin)                                         |
| file manager      | [nemo](https://wiki.archlinux.org/title/Nemo) & [ranger](https://wiki.archlinux.org/title/ranger)               |
| bluetooth manager | [bluetooth](https://wiki.archlinux.org/title/Blueman)                                                           |
| volume control    | [pavucontrol](https://archlinux.org/packages/extra/x86_64/pavucontrol/)                                         |
| network manager   | [network manager GUI](https://archlinux.org/packages/?name=nm-connection-editor)                                |

#### Discord

- [better discord](https://aur.archlinux.org/packages/betterdiscord-installer)
  `.config/BetterDiscord/themes/`

#### Spotify

- [spicetify](https://spicetify.app/docs/advanced-usage/installation)

  - clone [spicetify themes](https://github.com/spicetify/spicetify-themes) and take the **text** theme or search the Marketplace for the **text** theme

- [spotify tui](https://github.com/Rigellute/spotify-tui)

### Preview

![screenshot](/assets/screenshot.png)

### How to install

#### Install dependencies

#### AUR

`logo-ls swaylock-effects spotify mpv xfce4-notifyd`

to configure xfce ==> `xfce4-notifyd-config`

`log4cxx amdgpu-pro-oglp libxcrypt-compat amdgpu-pro-installer rocm-openCL` amd gpu lib for davinci resolve

#### Pacman

`feh`
`obsidian`
`easyeffects`
`alsa-utils`

for hyprland
`sudo pacman -S xdg-desktop-portal-hyprland`

- Set cursor with :
  `hyprctl setcursor WhiteSur Cursors 24`

Change `oh-my-zsh folder` to `.oh-my-zsh`
// amberol
https://rgbcolorpicker.com/

<details>
<summary>.kde config</summary>

### Icons :

`/home/user/.local/share/icons/`

### Color scheme :

`/home/user/.local/share/color-schemes/`

### Black box

flatpak :
`/home/user/.var/app/com.raggesilver.BlackBox/data/blackbox/schemes/`

### Konsole

`/home/user/.local/share/konsole/`

### Gtk Application Style

`Skeuos-White-Dark`

### Sddm

`/usr/share/sddm/themes/`

for move folder use :

`mv /path/to/file/source /path/to/file/destination`

### Splash sreen :

`/home/odin/.local/share/plasma/look-and-feel/`

### Picom

`/etc/xdg/`

</details>
