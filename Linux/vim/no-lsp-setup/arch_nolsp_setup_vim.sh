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
    #===install packages
    #notes
    #can install npm packages globally or locally, global=conveniant, local=more configuration
    #==other
    npm i typescript -g
    #==linters
    npm i eslint --save-dev -g
    # /usr/lib/node_modules/bin/eslint.js --init
    #flake8: more PEP8 features, pyflakes: python-language server integration
    sudo pip3 install flake8 pyflakes
    #==fixers
    #html, css
    npm i prettier --save-dev -g
    #pip install --upgrade autopep8
    #==autocomplete
    sudo pip3 install jedi

    ##setup custom directories
    mkdir ~/.vim/manual-setup
    mkdir ~/.vim/manual-setup/linters
    
    ##java setup, set relative to current java installed  
    #TODO fix java lsp link-linux executable 
    sed -i $a "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk/bin" ~/.profile
    #checkstyle (java linter) is not in archs repos, download jar file and put in a launcher script for ale to find
    cd ~/.vim/manual-setup/linters
    wget https://github.com/checkstyle/checkstyle/releases/download/checkstyle-8.24/checkstyle-8.24-all.jar  
    echo '#!/bin/sh \n java -jar checkstyle-8.XX-all.jar "@"' >> checkstyle 
    chmod u+x checkstyle
    #add to path for language server client (ale, syntastic)
    cp ./checkstyle /usr/bin
}

packages_install
language_setup
