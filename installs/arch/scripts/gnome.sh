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
    kvantum-qt5 \
    --needed --noconfirm

yay -S chrome-gnome-shell-git --needed --noconfirm

yay -S google-chrome 1password spotify --needed --noconfirm

sudo systemctl enable gdm

