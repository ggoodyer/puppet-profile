# zsh interactive configurations

# Add aliases
alias ls="ls -GxF --color=auto"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


# completion
autoload -U compinit
compinit

# Default completion style is quite plain and ugly
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# correction
setopt correctall

# prompt
autoload -U promptinit
promptinit
prompt fade
