# Easy folders navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

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
alias apps="cd /Applications"
alias finder='open . -a finder.app'

# Clean up .DS_Store files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# File size
alias fs="stat -f \"%z bytes\""
alias largestf='find -type f -printf '\''%s %p\n'\'' | sort -nr | head -n 40 | gawk "{ print \$1/1000000 \" \" \$2 \" \" \$3 \" \" \$4 \" \" \$5 \" \" \$6 \" \" \$7 \" \" \$8 \" \" \$9 }"'

# Misc
alias ka="killall"
alias cl="clear"
alias h="history"
alias q="exit"

# Check web page download time
alias curltime='curl -s -w "%{time_total} seconds\n" -o /dev/null'

# Git and GitHub (hub.github.com)
alias g="git"
alias gh="hub"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true and killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false and killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false and killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true and killall Finder"

# Empty the Trash
alias emptytrash="rm -rfv ~/.Trash"

# Network
alias my-ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ and print $1'"
alias whois="whois -h whois-servers.net"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
