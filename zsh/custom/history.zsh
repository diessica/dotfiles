if [ -z $HISTFILE ]; then
  HISTFILE=$HOME/.zsh_history
fi
HISTSIZE=10000
SAVEHIST=10000

# If a line starts with a space, don't save it
setopt hist_ignore_space
setopt hist_no_store

# Don't overwrite, append!
setopt append_history

# Save the time and how long a command ran
setopt extended_history

# When using a hist thing, make a newline show the change before executing it
setopt hist_verify

# Pretty    Obvious.  Right?
setopt hist_reduce_blanks

# About duplicated entries
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_expire_dups_first
setopt hist_find_no_dups

# Share history between shells
setopt SHARE_HISTORY
