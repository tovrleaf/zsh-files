# Where it gets saved
HISTFILE=~/.history

# Remember a years worth of history
SAVEHIST=10000
HISTSIZE=10000

# Don't overwrite but append
setopt APPEND_HISTORY

# Write after each command
setopt INC_APPEND_HISTORY

# Share history between multiple shells
setopt SHARE_HISTORY

# If I type cd and then cd again, only save the last one
setopt HIST_IGNORE_DUPS
setopt HIST_SAVE_NO_DUPS

# Even if there are commands in between commands that are the same,
# still only save the last one
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

# Pretty Obvious. Right?
setopt HIST_REDUCE_BLANKS

# If a line starts with a space, don't save it.
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE

# When using a hist thing, make a newline show the change before executing it.
setopt HIST_VERIFY

# Save the time and how long a command ran
setopt EXTENDED_HISTORY
