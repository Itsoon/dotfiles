exec = gsettings set org.gnome.desktop.interface icon-theme 'Gruvbox-Plus-Dark'
exec = gsettings set org.gnome.desktop.interface gtk-theme 'Gruvbox-Retro'
exec = gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
exec = gsettings set org.gnome.desktop.interface cursor-theme 'Gruvbox-Retro'
exec = gsettings set org.gnome.desktop.interface cursor-size 20
exec = hyprctl setcursor Gruvbox-Retro 20

android connect usb

sudo pacman -S gvfs-mtp mtpfs android-udev

sudo udevadm control --reload-rules
sudo systemctl restart systemd-udevd
