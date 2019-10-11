#yaourt
	#manual AUR method
		sudo pacman -S --needed base-devel git wget yajl
		cd /tmp
		git clone https://aur.archlinux.org/package-query.git
		cd package-query/
		makepkg -si && cd /tmp/
		git clone https://aur.archlinux.org/yaourt.git
		cd yaourt/ && makepkg -si
        
##generic software
#screen snipper, uses less dependancies than shutter
sudo pacman -S screenFetch	
#browser
sudo pacman -S brave
#editor
sudo pacman -S vim #geany notepadqq
sudo pacman -S sqlitebrowser
#development
sudo pacman -S npm
sudo pacman -S git 
sudo pacman -S postgresql
#command line programs
sudo pacman -S links
sudo pacman -S moc
sudo pacman -S mc vifm
#terminal utilities
sudo pacman -S xsel #cp/paste in terminal (for vim and vifm)


#virtualisation
#virtual box
pacman install virtualbox $(pacman -Qsq "^linux" | grep "^linux[0-9]*[-rt]*$" | awk '{print $1"-virtualbox-host-modules"}' ORS=' ')
#add virtual box module to kernel, if further problems https://wiki.manjaro.org/index.php?title=VirtualBox
sudo vboxreload
sudo gpasswd -a $USER vboxusers
#virtualbox guest additions
pamac install virtualbox-guest-utils $(pacman -Qsq "^linux" | grep "^linux[0-9]*[-rt]*$" | awk '{print $1"-virtualbox-guest-modules"}' ORS=' ')#pacman -S virtualbox-guest-dkms
sudo modprobe vboxguest vboxvideo vboxsf
sudo gpasswd -a $USER vboxsf
sudo systemctl enable --now vboxservice.service
#sudo rcvboxdrv

#cybersecurity
sudo pacman -S metasploit
sudo pacman -S gdb
sudo pacman -S pwndbg
#TODO metagoofil
#TODO cewl
#pdf scrubbing
#TODO exiftool
yaourt pdftk
pacman -S qpdf
#dns
yaourt dnsmap
#hidden firectories
yaourt dirb
#port scanner
pacman -S nmap
