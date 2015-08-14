# Easy folders navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Always recursive and verbose
alias cp="cp -rv"
alias rm="rm -rv"
alias mv="mv -v"

# List all files colorized in long format
alias l="ls -l -G"
alias ls-a="ls -a -G"
# List all files colorized in long format, including dot files
alias la="ls -la -G"
# List only directories
alias lsd='ls -l -G | grep "^d"'
# Always use color output for `ls`
alias ls="command ls -G"

# Process status
alias psa="ps aux"
alias psag="ps aux | ag "

# Easy folder and file loading
alias dl="cd ~/Downloads"
alias www="cd ~/Dev/www"
alias apps="cd /Applications"
alias zload="source ~/zshrc"
alias finder='open . -a finder.app'
alias dotfiles="cd ~/.dotfiles"

# Miscellaneous
alias cleanup="find  -type f -name '*DS_Store' -ls -delete"
alias ka="killall"
alias cl="clear"
alias h="history"
alias q="exit"

# Find the largest file under current directory
alias largestf='find -type f -printf '\''%s %p\n'\'' | sort -nr | head -n 40 | gawk "{ print \$1/1000000 \" \" \$2 \" \" \$3 \" \" \$4 \" \" \$5 \" \" \$6 \" \" \$7 \" \" \$8 \" \" \$9 }"'

# Show the external IP
alias my-ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Check web page download time
alias curltime='curl -s -w "%{time_total} seconds\n" -o /dev/null'

# Git and GitHub (hub.github.com)
alias g="git"
alias git="hub"
