# https://github.com/tmux-plugins/tmux-pain-control/blob/master/pain_control.tmux

## prefix unbind C-b
set -g prefix `
bind ` send-prefix

#todo figure out how to change to copy mode without mouse
# bind-key -T root C-m if-shell -F -t = "#{mouse_any_flag}" "send-keys -M" "if -Ft= \"#{pane_in_mode}\" \"send-keys -M\" \"copy-mode -et=\""

## panes/windows
### split/create panes/windows
bind-key "c" new-window -c "#{pane_current_path}"
bind-key "%" split-window -h -c "#{pane_current_path}"
bind-key '"' split-window -v -c "#{pane_current_path}"

bind-key "\\" split-window -fh -c "#{pane_current_path}"
bind-key "_" split-window -fv -c "#{pane_current_path}"
### resize panes
# can use these raw but i map them to shift-ctrl-<h,j,k,l> in iterm.
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 5
### change pane
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
bind-key C-h select-pane -L
bind-key C-j select-pane -D
bind-key C-k select-pane -U
bind-key C-l select-pane -R
### x closes panes, & closes windows so I changed to X
unbind &
bind X confirm-before -p "kill-window #W? (y/n)" kill-window
### mv a window
bind-key -r "<" swap-window -d -t -1
bind-key -r ">" swap-window -d -t +1

##
# easy config reloads
bind r source-file ~/.tmux.conf

## vim selection
unbind [ # todo neccessary?
bind Escape copy-mode
unbind p
bind p paste-buffer
bind-key -Tcopy-mode-vi 'v' send -X begin-selection
bind-key -Tcopy-mode-vi 'y' send -X copy-pipe "~/.copy"
# global cp
bind -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel "xsel -i --clipboard"

## plguins keys 
set -g @jump-key 'g'
set -g @urlview-key 'b'
# tmux-fzf: F

# Use vi keybindings for tmux commandline input.
# Note that to get command mode you need to hit ESC twice...
set -g status-keys vi
# Use vi keybindings in copy and choice modes
setw -g mode-keys vi

# easily toggle synchronization (mnemonic: e is for echo)
# sends input to all panes in a given window.
bind e setw synchronize-panes on
bind E setw synchronize-panes off

## old
#unbind '"'
#unbind %
#bind s split-window -c "#{pane_current_path}"
#bind v split-window -h -c "#{pane_current_path}"
#bind t new-window -c "#{pane_current_path}"

# moved from s (for new horizontal split)
# bind '"' choose-tree -Zs
# moved from w (for new window)
# bind c choose-tree -Zw

# smart pane switching with awareness of vim splits
# this doesnt work properlly
# Source: https://github.com/christoomey/vim-tmux-navigator
#is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
#   | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
#is_vim='echo "#{pane_current_command}" | grep -iqE "(^|\/)g?(view|n?vim?x?)(diff)?$"'
#bind -n C-h if-shell "$is_vim" "send-keys C-h" "select-pane -L"
#bind -n C-j if-shell "$is_vim" "send-keys C-j" "select-pane -D"
#bind -n C-k if-shell "$is_vim" "send-keys C-k" "select-pane -U"
#bind -n C-l if-shell "$is_vim" "send-keys C-l" "select-pane -R"
#bind -n C-\\ if-shell "$is_vim" "send-keys C-\\" "select-pane -l"
#bind-key -T copy-mode-vi C-h select-pane -L
#bind-key -T copy-mode-vi C-j select-pane -D
#bind-key -T copy-mode-vi C-k select-pane -U
#bind-key -T copy-mode-vi C-l select-pane -R
#bind-key -T copy-mode-vi C-\\ select-pane -l
