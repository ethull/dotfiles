PATH=$(pwd)

# home
ln -sf $PATH/.bashrc $HOME/.bashrc
ln -sf $path/.profile $HOME/.profile
ln -sf $path/.Xresources $HOME/.Xresources
ln -sf $path/.Xsession $HOME/.Xsession
ln -sf $path/.Xprofile $HOME/.Xprofile


# xdg config
[ ! -d $HOME/.config ] && mkdir $HOME/.config

[ -d $HOME/.vim/vimrc ] && rm -r $HOME/.vim/vimrc
ln -sf $PATH/.vim/vimrc $HOME/.vim/vimrc

[ -d $HOME/.moc/config ] && rm -r $HOME/.moc/config
ln -sf $PATH/.moc/config $HOME/.moc/config 

#tmux only reads $HOME/.tmux.conf
[ -d $HOME/.tmux.conf ] && rm -r $HOME/.tmux.conf
[ -d $HOME/.config/tmux/tmux.conf ] && rm -r $HOME/.config/tmux/tmux.conf
ln -sf $PATH/.config/tmux/tmux.conf $HOME/.tmux.conf

[ -d $HOME/.vifm/vifmrc ] && rm -r $HOME/.vifm/vifmrc
ln -sf $PATH/.vifm/vifmrc $HOME/.vifm/vifmrc

[ ! -d $HOME/.local ] && mkdir $HOME/.local
[ ! -d $HOME/.local/bin ] && mkdir $HOME/.local/bin
[ ! -d $HOME/.local/share ] && mkdir $HOME/.local/share


ln -sf $PATH/.local/bin/dsxiv $HOME/.local/bin/dsxiv
ln -sf $PATH/.local/bin/copy $HOME/.local/bin/copy
[ -d $HOME/.local/share/applications ] && rm -r $HOME/.local/share/applications
ln -sf $PATH/.local/share/applications $HOME/.local/share/applications
