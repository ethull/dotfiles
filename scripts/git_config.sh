git config --global user.name "John Doe"
git config --global user.email johndoe@example.com

echo -e "*~\n.*.swp\n.DS_Store" >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

sudo apt-get install libsecret-1-0 libsecret-1-dev
cd /usr/share/doc/git/contrib/credential/libsecret
sudo make
git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
#git config --global credential.helper osxkeychain
