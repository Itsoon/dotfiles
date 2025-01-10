# dotfiles

<div align="center">
<img src="https://img.shields.io/github/last-commit/Itsoon-xyz/Dotfile?color=%23c4a7e7&style=for-the-badge&labelColor=1a1b1f">
<img src="https://img.shields.io/github/repo-size/Itsoon-xyz/Dotfile?color=%23c4a7e7&style=for-the-badge&labelColor=1a1b1f">
<img src="https://img.shields.io/github/stars/Itsoon-xyz/Dotfile?color=%23c4a7e7&style=for-the-badge&labelColor=1a1b1f">
</div>

![image](https://github.com/user-attachments/assets/337e7229-6045-4d15-bbd6-da57a6d34cd8)
![image](https://github.com/user-attachments/assets/0eb921ec-5905-4ff1-a828-709a81b9285d)


| package name                | description          |
| --------------------------- | -------------------- |
| polkit-gnome                | authentication agent |
| xdg-desktop-portal-hyprland | XDG Desktop Portal   |
| cliphist                    | clipboard manager    |

## App

| package name           | description        |
| ---------------------- | ------------------ |
| pavucontrol            | audio settings GUI |
| rofi-lbonn-wayland-git | app launcher       |
| nwg-look               | theming GTK apps   |

## Theming

GTK theme : [Gruvbox GTK Theme](https://github.com/Fausto-Korpsvart/Gruvbox-GTK-Theme)

Icon theme : [Gruvbox plus icon pack](https://github.com/SylEleuth/gruvbox-plus-icon-pack)

> Activate themes with `nwg-look` (GUI) or gsettings.

### gsettings

set dark mode system :

```shell
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
```

set GTK theme :

```shell
gsettings set org.gnome.desktop.interface gtk-theme 'Gruvbox-Dark'
```

```shell

```

## Keybindings

| Keys                                                                                  | Action                                               |                                             |     |
| :------------------------------------------------------------------------------------ | :--------------------------------------------------- | ------------------------------------------- | --- |
| <kbd>Super</kbd> + <kbd>C</kbd><br><kbd>Alt</kbd> + <kbd>F4</kbd>                     | Close focused window                                 |                                             |     |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>Alt</kbd> + <kbd>M</kbd>                   | Kill Hyprland session                                |                                             |     |
| <kbd>Super</kbd> + <kbd>L</kbd>                                                       | Launch lock screen                                   |                                             |     |
| <kbd>Super</kbd> + <kbd>Q</kbd>                                                       | Launch terminal emulator                             |                                             |     |
| <kbd>Super</kbd> + <kbd>E</kbd>                                                       | Launch file manager                                  |                                             |     |
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Esc</kbd>                                   | Launch system monitor (btop or htop)                 |                                             |     |
| <kbd>Alt</kbd> + <kbd>Space</kbd>                                                     | Launch application launcher                          |                                             |     |
| <kbd>Alt</kbd> + <kbd>Tab</kbd>                                                       | Launch window switcher (rofi)                        |                                             |     |
| <kbd>Super</kbd> + <kbd>V</kbd>                                                       | Launch clipboard (rofi)                              |                                             |     |
| <kbd>Super</kbd> + <kbd>Space</kbd>                                                   | Switch keyboard layout                               |                                             |     |
| <kbd>Super</kbd> + <kbd>←</kbd><kbd>→</kbd><kbd>↑</kbd><kbd>↓</kbd>                   | Move window focus                                    |                                             |     |
| <kbd>Super</kbd> + <kbd>Tab</kbd>                                                     | Change window focus                                  |                                             |     |
| <kbd>Super</kbd> + <kbd>[0-9]</kbd>                                                   | Switch workspaces                                    |                                             |     |
| <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>←</kbd><kbd>→</kbd><kbd>↑</kbd><kbd>↓</kbd> | Resize windows                                       |                                             |     |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>[0-9]</kbd>                                | Move focused window to a relative workspace          |                                             |     |
| <kbd>Super</kbd> + <kbd>MouseScroll</kbd>                                             | Scroll through existing workspaces                   |                                             |     |
| <!--                                                                                  | <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>[0-9]</kbd> | Move focused window to a workspace silently | --> |
|                                                                                       |                                                      |                                             |     |

# TODO

[onagre](https://github.com/onagre-launcher/onagre)
