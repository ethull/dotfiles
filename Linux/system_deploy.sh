set_package_manager(){	
	if [ -x "$(command -v apt-get)" ]; then
		PM="sudo apt-get install -y"

	elif [ -x "$(command -v pacman)" ]; then
		PM="sudo pacman -S" 

	elif [ -x "$(command -v brew)" ]; then
		PM="brew install" 

	elif [ -x "$(command -v pkg)" ]; then
		PM="sudo pkg install"
	else
		echo "package manager not detected" 
		exit
	fi 	
}

#install software stright away
straight_install(){
	$PM $1
}
#prompt to install certain software
prompt_install() {
	echo -n "$1 is not installed. Would you like to install it? (y/n) " >&2
	old_stty_cfg=$(stty -g)
	stty raw -echo
	answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
	vstty $old_stty_cfg && echo
	if echo "$answer" | grep -iq "^y" ;then
	$PM $1
	else echo "$1, not installed"	
	fi
}

#install software
install_software(){
	set_package_manager
	$PM vim	
}

#dotfiles setup
dotfiles_setup(){
	#backup dotfiles
	echo -n "Would you like to backup your current dotfiles? (y/n) "
	old_stty_cfg=$(stty -g)
	stty raw -echo
	answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
	stty $old_stty_cfg
	if echo "$answer" | grep -iq "^y" ;then
		#mv ~/.zshrc ~/.zshrc.old
		mv ~/.tmux.conf ~/.tmux.conf.old
		mv ~/.vimrc ~/.vimrc.old
	else
		echo -e "\nNot backing up old dotfiles."
	fi

	#move dotfiles to correct location on current system
	printf "source '$HOME/dotfiles/zsh/zshrc_manager.sh'" > ~/.zshrc
	printf "so $HOME/dotfiles/vim/vimrc.vim" > ~/.vimrc
	printf "source-file $HOME/dotfiles/tmux/tmux.conf" > ~/.tmux.conf
}

