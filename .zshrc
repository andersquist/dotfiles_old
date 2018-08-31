fpath=("$HOME/.zsh/completion" "$HOME/.zfunctions" $fpath)
zstyle ':completion:*' ignored-patterns 'kubectl.docker'
autoload -U promptinit; promptinit
autoload -U compinit && compinit
autoload -U colors; colors

# Kubectl prompt
source "$HOME/dotfiles/kubectl-prompt/kubectl.zsh"

# Fish-like syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

for file in ~/.{paths,prompt,exports,aliases,functions,extra,auths}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done

# Completions
bindkey -M viins '\C-i' complete-word

zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'

# Faster! (?)
zstyle ':completion::complete:*' use-cache 1

# case insensitive completion
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# color code completion!!!!  Wohoo!
zstyle ':completion:*' list-colors "=(#b) #([0-9]#)*=36=31"

# Support CTRL-A CTRL-E
bindkey -e

# CTRL arrow naviation
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# Prompt
# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10
prompt pure


# History Stuff

# Where it gets saved
HISTFILE=~/.history

SAVEHIST=1000000
HISTSIZE=1000000

# Don't overwrite, append!
setopt APPEND_HISTORY

# Write after each command
# setopt INC_APPEND_HISTORY

# Killer: share history between multiple shells
# setopt SHARE_HISTORY

# If I type cd and then cd again, only save the last one
setopt HIST_IGNORE_DUPS

# Even if there are commands inbetween commands that are the same, still only save the last one
setopt HIST_IGNORE_ALL_DUPS

# Pretty    Obvious.  Right?
setopt HIST_REDUCE_BLANKS

# If a line starts with a space, don't save it.
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE

# When using a hist thing, make a newline show the change before executing it.
setopt HIST_VERIFY

# Save the time and how long a command ran
setopt EXTENDED_HISTORY

setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
