# if linux
sudo apt install vim-gtk3 vifm tmux
sudo apt install urlview xsel xclip rg fzf exiftool

sudo apt install xterm firefox flameshot thunderbird keepassxc zathura feh

sudo apt install -y build-essential git
sudo apt install -y nodejs npm
npm config set prefix ~/.local
npm install -g n
n lts

sudo apt install -y python3-pip

sudo apt-get install libgtk-3-dev # to compile dragon, can later rm
git clone https://github.com/mwh/dragon
cd dragon
make
make install
cd ..
rm -r dragon


# if mac
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install vim vifm tmux
brew cask install firefox
