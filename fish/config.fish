# No greeting, please
set -e fish_greeting

# Universal
set -x PATH $HOME/.local/bin $PATH
set -x EDITOR subl
set -x VISUAL $EDITOR

. "$HOME/.config/fish/functions/custom/export.fish"
. "$HOME/.config/fish/functions/custom/aliases.fish"
. "$HOME/.config/fish/functions/custom/functions.fish"
