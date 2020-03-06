path=$(pwd)
[ ! -d $HOME/.config ] && mkdir $HOME/.config


[ -d $HOME/.vim/vimrc ] && rm -r $HOME/.vim/vimrc
ln -sf $path/.vim/vimrc $HOME/.vim/vimrc
[ -d $HOME/.config/mc/ini ] && rm -r $HOME/.config/mc/ini
ln -sf $path/.config/mc/ini $HOME/.config/mc/ini
[ -d $HOME/.moc/config ] && rm -r $HOME/.moc/config
ln -sf $path/.moc/config $HOME/.moc/config 
[ -d $HOME/.moc/themes/themeName ] && rm -r $HOME/.moc/themes/themeName
ln -sf $path/.moc/themes/themeName $HOME/.moc/themes/themeName

#tmux only reads $HOME/.tmux.conf
[ -d $HOME/.tmux.conf ] && rm -r $HOME/.tmux.conf
ln -sf $path/.config/tmux/tmux.conf $HOME/.tmux.conf
[ -d $HOME/.vifm/vifmrc ] && rm -r $HOME/.vifm/vifmrc
ln -sf $path/.vifm/vifmrc $HOME/.vifm/vifmrc
[ -d $HOME/.vifm/colors/themeName ] && rm -r $HOME/.vifm/colors/themeName
ln -sf $path/.vifm/colors/themeName $HOME/.vifm/colors/themeName


[ ! -d $HOME/.local ] && mkdir $HOME/.local
[ ! -d $HOME/.local/share ] && mkdir $HOME/.local/share
