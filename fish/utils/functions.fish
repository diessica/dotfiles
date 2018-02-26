# Enter the directory and show its content
function cd
  builtin cd $argv; ls
end

# Create a new directory and enter it
function mkd
  mkdir -p "$argv"; cd "$argv"
end

# nvm with Fish shell's Bass (https://github.com/edc/bass#nvm)
function nvm
  bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
