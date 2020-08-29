test -z "$PROFILEREAD" && . /etc/profile || true

#============================
# less
#============================
export PAGER='less'
export LESS='-e -g -i -w -z-4 -F -J -M -N -R -X -P%t?f%f :stdin .?pb%pb\%:?lbLine %lb:?bbByte %bb:-...'

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

set -o notify

#============================
# Shell
#============================
shopt -s autocd
shopt -s cdable_vars
shopt -s cdspell
shopt -s checkhash
shopt -s direxpand
shopt -s dirspell
shopt -s dotglob
shopt -s execfail
shopt -s extglob
shopt -s failglob
shopt -s nocaseglob
shopt -s nocasematch
shopt -s nullglob
shopt -s xpg_echo

#============================
# Aliases
#============================
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias cat='cat -n'
alias mkdir='mkdir -p'

alias ps='ps --srot=start_time'
alias which='type -a'
alias ..='cd ..'
alias job='jobs -l'

alias du='dh -kh'
alias df='df -kTh'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls -CFh --color'
alias ll='ls -CFahl --color'

#============================
# Misc
#============================
export EDITOR='vim'
export HISTSIZE=10000

#============================
# Prompt
#============================
PS1="\[\]\\e[32m\u\e[1;30m\e[m:\e[1;34m\w\e[m \$ "
