path=$(pwd)

# home
ln -sf $path/.bashrc $HOME/.bashrc
ln -sf $path/.profile $HOME/.profile
ln -sf $path/.Xresources $HOME/.Xresources
ln -sf $path/.Xsession $HOME/.Xsession
ln -sf $path/.Xprofile $HOME/.Xprofile


# xdg config
[ ! -d $HOME/.config ] && mkdir $HOME/.config

[ -d $HOME/.vim ] && rm -r $HOME/.vim
ln -sf $path/.vim $HOME/.vim

[ -d $HOME/.moc ] && rm -r $HOME/.moc
ln -sf $path/.moc $HOME/.moc

#tmux only reads $HOME/.tmux.conf
[ -f $HOME/.tmux.conf ] && rm -r $HOME/.tmux.conf
[ -d $HOME/.config/tmux ] && rm -r $HOME/.config
ln -sf $path/.tmux.conf $HOME/.tmux.conf
ln -sf $path/.config/tmux $HOME/.config/tmux

[ -d $HOME/.config/vifm ] && rm -r $HOME/.config/vifm
ln -sf $path/.config/vifm $HOME/.config/vifm

[ ! -d $HOME/.local ] && mkdir $HOME/.local
[ ! -d $HOME/.local/bin ] && mkdir $HOME/.local/bin
[ ! -d $HOME/.local/share ] && mkdir $HOME/.local/share


ln -sf $path/.local/bin/dsxiv $HOME/.local/bin/dsxiv
ln -sf $path/.local/bin/copy $HOME/.local/bin/copy
[ -d $HOME/.local/share/applications ] && rm -r $HOME/.local/share/applications
ln -sf $path/.local/share/applications $HOME/.local/share/applications
