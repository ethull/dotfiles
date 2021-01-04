set -o vi
alias sai="sudo apt install"
#alias sar='sudo apt remove'
#alias sau='sudo apt upgrade'
#alias sauu='sudo apt update && sudo apt upgrade'

#alias myip="curl --silent https://ipecho.net/plain; echo"
#alias ss="ss -ntlp"
alias ps="ps auxf" # # show all processes, display user-oriented format, show processes that aren't attached to ttys, use full-format listing
alias pse="\ps -e --forest" # list processes as a tree
alias psg="\ps aux | grep -v grep | grep -i -e VSZ -e" # search for a running process. example: psg firefox
alias psr="\ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head" # list top 10 cpu-intensive processes
alias pst="\ps -eo pid,comm,lstart,etimes,time,args"

alias tarc="tar -cvzf"
alias tarx="tar -xf"

#alias rg="rg -i --color=auto"
#alias mkdir='mkdir -pv'
#alias suroot="sudo -E su -p"
alias off="shutdown -h now"

# ubuntu ls aliases
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
alias lt="ls -h -s -1 -S"

# find
alias fd="find -name"


# fzf wrappers
alias fzfcd='fzfcd() { cd "$(find -type d 2>/dev/null | fzf)" ;}; fzfcd'
alias fzfed='fzfed() { $EDITOR "$(find -type f 2>/dev/null | fzf)" ;}; fzfed'

#eslint global config
alias eslint="eslint --resolve-plugins-relative-to /usr/local/lib/node_modules"

alias ytdl='youtube-dl'

# libre office convert docx and pptx to pdf
alias lowpdf="lowriter --convert-to pdf"

alias brave="brave-browser"

# if not by default
alias vi="vim"

alias safe_zathura="firejail --disable-mnt zathura"
alias safe_pdf2ps="firejail --disable-mnt --private-dev --net=none pdf2ps"
alias safe_ps2pdf="firejail --disable-mnt --private-dev --net=none ps2pdf"

# get public facing internet info
alias public_internet="curl ipinfo.io"
