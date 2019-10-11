
packages_install(){
#essestional setup
    sudo pacman -S gvim lua
#js -> py -> java -> c
    sudo pacman -S nodejs npm 
    sudo pacman -S python
    sudo pacman -S openjdk-11-jdk lang maven
    sudo pacman -S clang
    
}

langauge setup(){
    ##install packages
    #js setup, installs npm packages globally, can install individially for each local project
    npm install eslint --save-dev -g
    # /usr/lib/node_modules/bin/eslint.js --init
    npm install typescript -g
    #optional code fixer, I use eslint aswell instead 
    #npm install prettier --save-dev -g
    #setup python autocomplete and linters
    sudo pip3 install jedi flake8
    
    ##setup custom directories
    mkdir ~/.vim/manual-setup
    mkdir ~/.vim/manual-setup/linters
    mkdir ~/.vim/manual-setup/language-servers
    
    ##java setup, set relative to current java installed, 
    #TODO fix java lsp link-linux executable 
    sed -i $a "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk/bin" ~/.profile
    #checkstyle (java linter) is not in archs repos, download jar file and put in a launcher script for ale to find
    cd ~/.vim/manual-setup/linters
    wget https://github.com/checkstyle/checkstyle/releases/download/checkstyle-8.24/checkstyle-8.24-all.jar  
    echo '#!/bin/sh \n java -jar checkstyle-8.XX-all.jar "@"' >> checkstyle 
    chmod u+x checkstyle
    #add to path for language server client (ale, syntastic)
    cp ./checkstyle /usr/bin
   #java language server setup
    cd ~/.vim/manual-setup/language-servers
    git clone https://github.com/georgewfraser/java-language-server.git
    cd java-language-server
    scripts/link_linux.sh
    #add to vimrc (for ale)
    #let g:ale_java_javalsp_executable = ~/.vim/manual-setup/language-servers/java-language-server/dist/linux/bin/launcher
}

packages_install
language_setup
