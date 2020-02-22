#can install npm packages globally or locally, global=conveniant, local=more configuration
#==js
npm i typescript -g
npm i eslint --save-dev -g
# /usr/lib/node_modules/bin/eslint.js --init
# cp /usr/lib/node_modules/bin/.eslintrc ~/.eslintrc
#==html, css
npm i prettier --save-dev -g
#==python
#flake8: more PEP8 features, also includes pyflakes, pyflakes: python-language server integration
sudo pip3 install flake8
sudo pip3 install jedi
#==c
sudo pacman -S clang
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


