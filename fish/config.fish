# No greeting, please
set -U fish_greeting ""


# Universal
set -x EDITOR codium

fish_add_path /opt/homebrew/bin

. "$HOME/.config/fish/functions/custom/aliases.fish"
. "$HOME/.config/fish/functions/custom/functions.fish"

starship init fish | source

fnm env --use-on-cd --shell fish | source