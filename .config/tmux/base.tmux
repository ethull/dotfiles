# http://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/
# https://github.com/tmux-plugins/list

# avoid vim switching delay
set -sg escape-time 0
set -g history-limit 50000
# refresh 'status-left' and 'status-right' more often
#set -g status-interval 5
set -g focus-events on
# don't rename windows automatically
set-option -g allow-rename off
# Enable mouse mode (tmux 2.1 and above)
set -g mouse on
# super useful when using "grouped sessions" and multi-monitor setup
setw -g aggressive-resize on
set -g set-clipboard on

### plugins
set -g @tpm_plugins '            \
    tmux-plugins/tpm             \
    sainnhe/tmux-fzf             \
    tmux-plugins/tmux-cpu        \
    tmux-plugins/tmux-urlview    \
    tmux-plugins/tmux-resurrect  \
    schasse/tmux-jump            \
'
# tmux-plugins/tmux-sensible   \
# tmux-plugins/tmux-yank       \
# jimeh/tmux-themepack         \
# wfxr/tmux-fzf-url            \

set -g @resurrect-processes 'mocp ssh psql mysql sqlite3'
set -g @resurrect-strategy-vim 'session'
set -g @resurrect-strategy-nvim 'session'

# initialize tmux plugin manager
run -b '~/.config/tmux/plugins/tpm/tpm'
