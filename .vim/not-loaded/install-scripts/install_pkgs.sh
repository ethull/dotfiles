# debian
    sudo apt install -y vim-gtk3
    sudo apt install -y nodejs npm

    sudo apt install -y python3 pip3
    sudo apt install -y openjdk-11-jdk checkstyle maven
    sudo apt install -y clang-tools-9

    #==js
    sudo npm i typescript -g
    sudo npm i eslint --save-dev -g
    sudo npm i standard --save-dev -g
    # /usr/lib/node_modules/bin/eslint.js --init
    # cp /usr/lib/node_modules/bin/.eslintrc ~/.eslintrc
    #==html, css
    sudo npm i htmlhint --save-dev -g
    sudo npm i prettier --save-dev -g
    #==python
    sudo pip3 install pyflakes
    sudo pip3 install black
    #==c
    sudo pacman -S gcc
    sudo pacman -S clangd-9
    sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-9 100
    #==java
    mkdir ~/.vim/manual-setup
    mkdir ~/.vim/manual-setup/linters
    #checkstyle (java linter) is not in archs repos, download jar file and put in a launcher script for ale to find
    cd ~/.vim/manual-setup/linters
    sudo apt install checkstyle 

# arch
    sudo pacman -S gvim lua
    sudo pacman -S nodejs npm 
    sudo pacman -S python
    sudo pacman -S openjdk-11-jdk lang maven
    sudo pacman -S clang

    #==js
    sudo npm i typescript -g
    sudo npm i eslint --save-dev -g
    sudo npm i standard --save-dev -g
    #==html, css
    sudo npm i htmlhint --save-dev -g
    sudo npm i prettier --save-dev -g
    #==python
    sudo pip3 install pyflakes
    sudo pip3 install black
    #==c
    sudo pacman -S gcc
    sudo pacman -S clangd-9
    sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-9 100
    #==java
    mkdir ~/.vim/manual-setup
    mkdir ~/.vim/manual-setup/linters
    #checkstyle (java linter) is not in archs repos, download jar file and put in a launcher script for ale to find
    cd ~/.vim/manual-setup/linters
    wget https://github.com/checkstyle/checkstyle/releases/download/checkstyle-8.24/checkstyle-8.24-all.jar  
    echo '#!/bin/sh \n java -jar checkstyle-8.XX-all.jar "@"' >> checkstyle 
    chmod u+x checkstyle
    #add to path for language server client 
    cp ./checkstyle /usr/bin
