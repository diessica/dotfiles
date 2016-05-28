function cd() {
  builtin cd $@ && ls
}

# Create a new directory and enter it
function mkd() {
  mkdir -p "$@" && cd "$@"
}
