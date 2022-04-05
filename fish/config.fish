# No greeting, please
set -e fish_greeting

# Universal
set -x EDITOR code

fish_add_path /opt/homebrew/bin

. "$HOME/.config/fish/functions/custom/aliases.fish"
. "$HOME/.config/fish/functions/custom/functions.fish"

starship init fish | source