# Enter the folder and see what's inside it
function cd() {
  builtin cd $@ && ls
}

# Create a new directory and enter it
function mkd() {
  mkdir -p "$@" && cd "$@"
}

# Find a word and replace it
function find-replace() {
  find=$1
  replace=$2
  echo "replacing $find with $replace in $(pwd)"
  find ./ -type f -exec grep -q $find '{}' \; -exec sed -i .qqq "s/$find/$replace/" '{}' \;
  find ./ -type f -name '*.qqq' -exec rm '{}' \;
}

# Determine size of a file or total size of a directory
function fs() {
  if du -b /dev/null > /dev/null 2>&1; then
  local arg=-sbh
  else
  local arg=-sh
  fi
  if [[ -n "$@" ]]; then
  du $arg -- "$@"
  else
  du $arg .[^.]* *
  fi
}

# Show/hide dotfiles
function dots() {
  defaults write com.apple.finder AppleShowAllFiles -bool "$@"
  killall Finder
}

# whois
function whois() {
  command whois $(echo $1 | sed -e 's|https?://||' -e 's|/||g')
}
