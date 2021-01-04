#https://github.com/tliron/install-gnome-themes
#https://www.fossmint.com/install-gnome-themes-on-ubuntu/
#https://github.com/lassekongo83/zuki-themes

# turn off event sounds
#dconf write /org/gnome/desktop/sound/event-sounds false
gsettings set org.gnome.desktop.sound event-sounds false

# set gtk themes
git clone https://github.com/i-mint/midnight
sudo cp -r midnight/Midnight-OrangeNight /usr/share/themes
gsettings set org.gnome.desktop.interface gtk-theme "Midnight-OrangeNight"
gsettings set org.gnome.desktop.wm.preferences theme "Midnight-OrangeNight"

# grub theme
git clone https://github.com/vinceliuice/grub2-themes 
(
    cd grub2-themes
    chmod +x ./install.sh
    sudo ./install.sh --slaze
)
rm -r grub2-themes


# graphics
sudo dpkg --add-architecture i386 
## nvidia (can use default nouveau if not gaming)
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install nvidia-driver-450
sudo apt install libvulkan1 libvulkan1:i386
## amd (ubuntu 18+)
#sudo add-apt-repository ppa:kisak/kisak-mesa
#sudo apt update
#sudo apt install libgl1-mesa-dri:i386
#sudo apt install mesa-vulkan-drivers mesa-vulkan-drivers:i386
