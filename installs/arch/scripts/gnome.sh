echo '*** Installing Gnome DE ***'

sudo pacman -S \
    avahi \
    eog \
    gnome \
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
    kvantum-qt5 \
    --needed --noconfirm

yay -S chrome-gnome-shell-git --needed --noconfirm

sudo systemctl enable gdm

