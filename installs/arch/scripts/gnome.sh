echo '*** Installing Gnome DE ***'

sudo pacman -S archlinux-keyring --noconfirm 

sudo pacman -Syu

sudo pacman -S \
    avahi \
    eog \
    gnome \
    pipewire-jack \
    lib32-pipewire-jack \
    gnome-themes-extra \
    gnome-tweaks \
    simple-scan \
    gst-libav \
    perl-file-mimeinfo \
    gst-libav \
    gst-plugins-bad \
    gst-plugins-base \
    gst-plugins-good \
    gst-plugins-ugly \
    devhelp \
    firefox \
    kitty \
    kvantum-qt5 \
    --needed --noconfirm

yay -S chrome-gnome-shell-git --needed --noconfirm

yay -S google-chrome 1password spotify --needed --noconfirm

sudo systemctl enable gdm

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "[\"<Alt>1\"]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "[\"<Alt>2\"]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "[\"<Alt>3\"]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "[\"<Alt>4\"]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "[\"<Alt>5\"]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "[\"<Alt>6\"]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "[\"<Alt>7\"]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "[\"<Alt>8\"]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "[\"<Alt>9\"]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "[\"<Alt>0\"]"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "[\"<Shift><Alt>1\"]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "[\"<Shift><Alt>2\"]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "[\"<Shift><Alt>3\"]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "[\"<Shift><Alt>4\"]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "[\"<Shift><Alt>5\"]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "[\"<Shift><Alt>6\"]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "[\"<Shift><Alt>7\"]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "[\"<Shift><Alt>8\"]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "[\"<Shift><Alt>9\"]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "[\"<Shift><Alt>0\"]"

