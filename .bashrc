### Importing My Stuff >>>

### Source Global Definitions ##################################################
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

### Aliases ####################################################################
alias ll='ls -F --color=auto --group-directories-first'
alias ltr='ls -ltrF --color=auto'
alias diff='diff -sy --color --suppress-common-lines'
alias grep='grep --color=auto'
alias tmux='tmux -2'

### Run on Terminal Start ######################################################
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE='true'
GIT_PS1_SHOWUNTRACKEDFILES='true'
PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'
PS1='\[\e]0;@\u: \w\a\]\[\e[92m\]\u@\h\[\e[0m\]: \[\e[94m\]\w\[\e[93m\]${PS1_CMD1}\n\[\e[0m\][$?] \[\e[97m\]\\$\[\e[0m\] '

export SHELL=fish
export EDITOR=vim

neofetch
