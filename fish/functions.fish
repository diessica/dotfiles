# Enter the directory and show its content
function cd() {
  builtin cd $@ && ls
}

# Create a new directory and enter it
function mkd() {
  mkdir -p "$@" && cd "$@"
}

# nvm with Fish shell's Bass (https://github.com/edc/bass#nvm)
function nvm() {
  bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
}
