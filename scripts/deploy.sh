cd ..
Path=$(pwd)

# home
#ln -sf $Path/.bashrc $HOME/.bashrc
ln -sf $Path/.bash_aliases $HOME/.bash_aliases
[ -f $HOME/.profile ] && rm -r $HOME/.profile
ln -sf $Path/.profile $HOME/.profile
ln -sf $Path/.xresources $HOME/.xresources
ln -sf $Path/.xprofile $HOME/.xprofile
ln -sf $Path/.xinitrc $HOME/.xinitrc
ln -sf $Path/.gitignore_global $HOME/.gitignore
git config --global core.excludesFile '~/.gitignore'


# xdg config
[ ! -d $HOME/.config ] && mkdir $HOME/.config

[ -d $HOME/.vim ] && rm -r $HOME/.vim
ln -sf $Path/.vim $HOME/.vim

[ -d $HOME/.config/nvim ] && rm -r $HOME/.config/nvim
ln -sf $Path/.config/nvim $HOME/.config/nvim

[ -d $HOME/.moc ] && rm -r $HOME/.moc
ln -sf $Path/.moc $HOME/.moc

#tmux only reads $HOME/.tmux.conf
[ -f $HOME/.tmux.conf ] && rm -r $HOME/.tmux.conf
[ -d $HOME/.config/tmux ] && rm -r $HOME/.config/tmux
ln -sf $Path/.config/tmux/tmux.conf $HOME/.tmux.conf
ln -sf $Path/.config/tmux $HOME/.config/tmux

[ -d $HOME/.config/vifm ] && rm -r $HOME/.config/vifm
ln -sf $Path/.config/vifm $HOME/.config/vifm

[ -d $HOME/.config/zathura ] && rm -r $HOME/.config/zathura
ln -sf $Path/.config/zathura $HOME/.config/zathura


[ ! -d $HOME/.local ] && mkdir $HOME/.local
[ ! -d $HOME/.local/bin ] && mkdir $HOME/.local/bin
[ ! -d $HOME/.local/share ] && mkdir $HOME/.local/share


ln -sf $Path/.local/bin/copy $HOME/.local/bin/copy
[ -d $HOME/.local/share/applications ] && rm -r $HOME/.local/share/applications
ln -sf $Path/.local/share/applications $HOME/.local/share/applications
