# xfce theme
git clone https://github.com/i-mint/midnight
sudo cp -r midnight/Midnight-OrangeNight /usr/share/themes
rm -r midnight

# grub theme
git clone https://github.com/vinceliuice/grub2-themes 
(
    cd grub2-themes
    chmod +x ./install.sh
    sudo ./install.sh --slaze
)
rm -r grub2-themes
