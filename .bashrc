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

### Run on Terminal Start ######################################################
neofetch
