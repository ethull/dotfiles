# debian
    sudo apt install -y vim-gtk3
    #==js
    #sudo apt install -y nodejs npm
    curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
    sudo apt-get install -y nodejs
    sudo npm i typescript -g
    sudo npm i eslint --save-dev -g
    sudo npm i standard --save-dev -g
    # /usr/lib/node_modules/bin/eslint.js --init
    # cp /usr/lib/node_modules/bin/.eslintrc ~/.eslintrc
    #==html, css
    sudo npm i htmlhint --save-dev -g
    sudo npm i prettier --save-dev -g
    # php
    sudo apt install php
    wget https://cs.symfony.com/download/php-cs-fixer-v2.phar -O php-cs-fixer
    sudo chmod a+x php-cs-fixer
    sudo mv php-cs-fixer /usr/local/bin/php-cs-fixer
    #==python
    sudo apt install -y python3 python3-pip
    sudo pip3 install pyflakes
    sudo pip3 install black
    #==c
    sudo apt install -y clang-tools-9
    sudo apt install -y gcc
    sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-9 100
    #==java
    sudo apt install -y openjdk-11-jdk checkstyle maven
    mkdir ~/.vim/manual-setup
    mkdir ~/.vim/manual-setup/linters
    #checkstyle (java linter) is not in archs repos, download jar file and put in a launcher script for ale to find
    cd ~/.vim/manual-setup/linters
    #sudo apt install checkstyle 
    # latex
    sudo apt install texlive-latex-extra
    #sudo apt install texlive-extra-utils
    //compiler
    sudo apt install latexmk
    sudo apt install latexrun 
    #sudo apt install tectonic 
    #sudo apt install arara
    //linter
    sudo apt install chktex
    sudo apt install lacheck

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
