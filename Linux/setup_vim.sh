#!/bin/bash
#sudo apt-get install clang nodejs python3 npm lua5.3 liblua5.3 maven
set_package_manager(){	
	if [ -x "$(command -v apt-get)" ]; then
		PM="apt"

	elif [ -x "$(command -v pacman)" ]; then
		PM="pacman" 
	else
		echo "package manager not directly included" 
		exit
	fi 	
}

ubuntu_install script(){
#essentional
    sudo apt install -y gvim
#js -> py -> java -> c -> lua
    sudo apt install -y nodejs npm
    sudo apt install -y python3
    sudo apt install -y openjdk-11-jdk lang checkstyle maven
    sudo apt install -y clang
    sudo apt install -y lua5.3 liblua5.3 

}

arch_install_script(){
#essestional setup
    sudo pacman -S gvim lua
#js -> py -> java -> c
    sudo pacman -S nodejs npm 
    sudo pacman -S python
    sudo pacman -S openjdk-11-jdk lang maven
    sudo pacman -S clang
    
   }

java_setup(){
export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64 
    "checkstyle (java linter) is not in archs repos, download jar file and put in a launcher script for ale to find
    mkdir ~/Desktop/VimJavaSetup
    cd ~/Desktop/VimJavaSetup
    wget https://github.com/checkstyle/checkstyle/releases/download/checkstyle-8.24/checkstyle-8.24-all.jar  
    echo "#!/bin/sh \n java -jar checkstyle-8.XX-all.jar "@"" >> checkstyle 
    chmod u+x checkstyle
    
    "java code to install language server
    git clone https://github.com/georgewfraser/java-language-server.git
    cd java-language-server
    scripts/link_mac.sh
    "let g:ale_java_javalsp_executable = <path-to-java-language-server>/java-language-server/dist/mac/bin/launcher

}

language_setup(){
    java_setup
    #js setup
    npm install eslint --save-dev -g
    npm install typescript -g
    #setup python linters
    sudo pip3 install jedi flake8
     
}




install_packages(){
    set_package_manager
    if ["$PM"=="apt"]; then
        ubuntu_install_script
    else if ["$PM"=="apt"]; then 
        arch_install_script    
    language_setup
}
    

"""uncomment if plugin manager install script is not included in vimrc
echo "to update manually: YoucompleteMe"
echo "https://github.com/j1z0/dotfiles.git"

"""TODO
"""setup system to ask user what plugin manager they want
    "git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    "cp ./vimrc ~/.vim/vimrc
    "ln ~/.vimrc ~/.vim/vimrc
    "vim +PluginInstall +qall






