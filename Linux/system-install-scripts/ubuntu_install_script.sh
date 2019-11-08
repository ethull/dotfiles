#!/bin/bash
#==ppa's are ubuntu only, if using vanilla debian based system remove them

#==utility software
#text editors
apt install vim-gtk3 
apt install geany
git clone https://github.com/codebrainz/geany-themes
mv ./geany-themes/colorschemes/* ~/.config/geany/colorschemes/
#security scanners
apt install clamav rkhunter 
#email manager
apt install evolution
#partition manager
apt install gparted 
#music editor
apt install audacity 
##screen snipper, ubuntu: ppa, LM: works
apt install shutter 
#sqllite db editor
apt install sqlitebrowser 
#image editor
sudo apt install magic 
#sandbox
apt install firejail
#web browser
#Brave browser
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
source /etc/os-release
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-${UBUNTU_CODENAME}.list
sudo apt update
sudo apt install brave-browser    

#==development installs
#Python installs
sudo apt install python3-pip
sudo apt install python3-tk
#javascript package manager, includes nodejs
sudo apt install npm
sudo apt install git
sudo apt install postgresql
#qt
sudo apt install python-qt4 qt4-designer
sudo apt install qt5-default qttools5-dev-tools qttools5-dev pyqt5-dev-tools

#==ncurses (interactive cli) programs
#browser
sudo apt install links2
#music player
sudo apt install moc moc-ffmpeg-plugin
#file manager
sudo apt install mc vifm

#==other utils
#Timeshift, system backup (already installed in LM)
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt update
sudo apt install timeshift

#youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
# or
#sudo -H pip install --upgrade youtube-dl
		
#More codecs
	sudo apt-get install mint-meta-codecs
			
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



		
