# No greeting, please
set -e fish_greeting

# Universal
set -x EDITOR code
set -x PATH bin $PATH

. "$HOME/.config/fish/functions/custom/aliases.fish"
. "$HOME/.config/fish/functions/custom/functions.fish"

