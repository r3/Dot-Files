# ZSH modules and settings
autoload -U compinit promptinit colors
colors
compinit -i
promptinit

setopt CSH_NULL_GLOB SHARE_HISTORY EXTENDED_HISTORY NO_HIST_BEEP \
       NOBEEP AUTO_CD EXTENDED_GLOB NO_MAIL_WARNING NO_CLOBBER \
       CORRECT AUTO_PUSHD

# This is to deal with the gnupg sign-in
# which likes to pop up on other terms.
# It's nice in some cases, but not needed here.
#export GPG_TTY=`tty`
#echo UPDATESTARTUPTTY | gpg-connect-agent >/dev/null

# List directories when changing directories
preexec() { ODIR="$(pwd)" }          
precmd() { [[ "$(pwd)" != $ODIR ]] \
        && [[ "$(pwd)" != $HOME ]] \
        && ls --color=auto --group-directories-first -hF \
        &&  ODIR="$(pwd)" }

# Java thingy
export _JAVA_AWT_WM_NONREPARENTING=1

# Disable pausing/resuming terminal with C-s and C-q
#stty ixoff -ixon
stty stop undef

# Use unicode for Locale (en_US.UTF-8)
export LC_ALL=en_US.UTF-8

# The path.
typeset -U PATH
export PATH=~/.scripts:$PATH:.

# Zsh syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlight/zsh-syntax-highlighting.zsh

# import .aliases
if [[ -r ~/.aliases ]]; then
    source ~/.aliases
fi

# load tmux
if [[ $TERM == rxvt-unicode-256color ]]; then
    tmux -2; exit
fi

# System vars
export VISUAL=vim
export EDITOR=vim
export PAGER=less
export HISTFILE=~/.zsh_history
export HISTSIZE=500
export SAVEHIST=5000
export MAIL=$HOME/Mail/INBOX/new
export MAILCHECK=20
export CDPATH=~:~/Docs:/media

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;34m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Everyone likes a pretty PS1
export PS1="%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[white]%}%M%{$reset_color%}:%B%1~%b %B%%%b "

# Vi-like keys and similar history search
bindkey -v
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# ZSH imports ~/.hosts file for autocompleting
# things like ssh and scp.
local _myhosts > /dev/null
if [[ -f $HOME/.ssh/known_hosts ]]; then
  _myhosts=( ${${${${(f)"$(<$HOME/.hosts)"}:#[0-9]*}%%\ *}%%,*} ) > /dev/null
  zstyle ':completion:*' hosts $_myhosts
fi

# ZSH Command completion
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.local/share/zsh

# Sets up [Tab][Tab] to show labels
# as well as previous command args
_complete_plus_last_command_args() {
    last_command=$history[$[HISTCMD-1]]
    last_command_array=("${(s/ /)last_command}") 
    _sep_parts last_command_array
    _complete 
}

_force_rehash() {
    (( CURRENT == 1 )) && rehash
    return 1  # Because we didn't really complete anything
}

zstyle ':completion:::::' completer _force_rehash _complete_plus_last_command_args _approximate 

# Additional ZSH completion stuff
zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX + $#SUFFIX) / 3 )) )'
zstyle ':completion:*:descriptions' format "- %d -"
zstyle ':completion:*:corrections' format "- %d - (errors %e})"
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*' menu select
zstyle ':completion:*' verbose yes
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
zstyle ':completion:*:kill:*' insert-ids single
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always

# Python stuff
#export PYTHONPATH=~/Programming/Python/py:/opt/openoffice.org/basis3.3/program
export WORKON_HOME=~/Programming/Python/projects
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PROJECT_HOME=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
