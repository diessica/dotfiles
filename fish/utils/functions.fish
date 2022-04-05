# Enter the directory and show its content
function cd
  builtin cd $argv; ls
end

# Create a new directory and enter it
function mkd
  mkdir -p "$argv"; cd "$argv"
end

function note
  set filename $argv[2]; or set filename (date -u +"%Y-%m-%d-%H%M")
  echo $argv[1] >> ~/Notes/"$filename.md"
end

