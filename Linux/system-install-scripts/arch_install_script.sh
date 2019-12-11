#!/bin/bash
#yaourt, AUR package manager
	#manual AUR method
		sudo pacman -S --needed base-devel git wget yajl
		cd /tmp
		git clone https://aur.archlinux.org/package-query.git
		cd package-query/
		makepkg -si && cd /tmp/
		git clone https://aur.archlinux.org/yaourt.git
		cd yaourt/ && makepkg -si

#==utility software
#cli tools
#cp/paste in terminal (for vim and vifm)
sudo pacman -S xsel xclip
#text editor
sudo pacman -S gvim
#security scanners
sudo pacman -S clamav rkhunter
#email manager
sudo pacman -S evolution
#partition manager
sudo pacman -S gparted 
#music editor
sudo pacman -S audacity
sudo pacman -S screenFetch flameshot	
#sqlite db editor
sudo pacman -S sqlitebrowser
#browser
sudo pacman -S brave
#=minimal
#pdf 
sudo pacman -S zathura
#image 
sudo pacman -S sxiv


#==development
sudo pacman -S npm
sudo pacman -S git 
sudo pacman -S postgresql

#==ncurses (interactive cli) programs
#browser
sudo pacman -S links 
#music player
sudo pacman -S moc moc-ffmpeg-plugin
#file manager
sudo pacman -S vifm

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

#==cybersecurity
sudo pacman -S metasploit
sudo pacman -S gdb pwndbg
#TODO metagoofil
#TODO cewl
#pdf scrubbing
#TODO exiftool
yaourt pdftk
pacman -S qpdf
#dns
yaourt dnsmap
#hidden directories
yaourt dirb
#port scanner
pacman -S nmap
#volatility, memory forensics
#pacman -S volatility
