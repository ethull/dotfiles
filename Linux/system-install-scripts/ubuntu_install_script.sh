#!/bin/bash
#==ppa's are ubuntu only, if using vanilla debian based system remove them

#==general packages
sudo apt install build-essential dkms linux-headers-$(uname -r)

#==utility software
#cli tools
sudo apt install curl -y
#text editors
sudo apt install vim-gtk3 geany
git clone https://github.com/codebrainz/geany-themes
mv ./geany-themes/colorschemes/* ~/.config/geany/colorschemes/
#security scanners
sudo apt install clamav rkhunter 
#email manager
sudo apt install evolution
#partition manager
sudo apt install gparted 
#music editor
sudo apt install audacity 
#=screen snipper
sudo apt install flameshot
#use shutter for tabbed interface, on vanilla ubuntu need a ppa
#apt install shutter 
#sqlite db editor
sudo apt install sqlitebrowser 
#image editor
sudo apt install magic 
#sandbox
sudo apt install firejail
#=usb burner
#wget https://github.com/balena-io/etcher/releases/download/v1.5.63/balena-etcher-electron-1.5.63-linux-ia32.zip  
#unzip ./balena-etcher-electron-1.5.63-linux-ia32.zip 
#chmod a+x balenaEtcher-1.5.63-ia32.AppImage
#mv  ./balenaEtcher-1.5.63-ia32.AppImage /usr/bin
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
sudo apt-get update
sudo apt-get install balena-etcher-electron
#=web browser
#Brave browser
sudo apt install apt-transport-https
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
source /etc/os-release
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-${UBUNTU_CODENAME}.list
sudo apt update
sudo apt install brave-browser
#virtualization
sudo apt install virtualbox
sudo apt install virtualbox-guest-additions-iso
sudo modprobe vboxdrv
#=minimal
#pdf 
sudo pacman -S zathura
#image 
sudo pacman -S sxiv


#==development
#Python installs
sudo apt install python3-pip
sudo apt install python3-tk
#javascript package manager, includes nodejs
sudo apt install npm
sudo apt install git
sudo apt install postgresql
#java
sudo apt install openjdk-11-jdk libopenjfx-java openjfk
#qt
sudo apt install python-qt4 qt4-designer
sudo apt install qt5-default qttools5-dev-tools qttools5-dev pyqt5-dev-tools

#==ncurses (interactive cli) programs
#browser
sudo apt install links2
#music player
sudo apt install moc moc-ffmpeg-plugin
#file manager
sudo apt install vifm


#==other utils
#Timeshift, system backup (already installed in LM)
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt update
sudo apt install timeshift

#youtube-dl, generally ubuntu repo ver is outdated
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
# or
#sudo -H pip install --upgrade youtube-dl
		
#More codecs
	#sudo apt-get install mint-meta-codecs
			
#Cyber security			
    #Metasploit
		#Install
			curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
			chmod 755 msfinstall
			sudo ./msfinstall 
		#Setup
			sudo chmod 775 /opt/metasploit-framework/apps/pro/ui/config/database.yml
			service postgresql start
			service metasploit start		
			msfconsole		
			db_status
	#GDB 
		#pwndbg extension
			git clone https://github.com/pwndbg/pwndbg
					cd pwndbg
					./setup.sh
			pattern.py		
				wget https://raw.githubusercontent.com/Svenito/exploit-pattern/master/pattern.py
	#metagoofill
		apt install metagoofil
	#Cewl
		apt install cewl
	
	#PDF scrubbing
		apt install exiftool
		apt install pdftk
		apt install qpdf	
	#dns
		apt install host dnsmap
	#website hidden directories
		apt install dirb
	#port scanner
		apt install nmap
	#volatility 



		
