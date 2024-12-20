### Importing My Stuff >>>

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

    neofetch

    export SHELL=fish
    export EDITOR=vim
    export COLORTERM=truecolor
end

### Aliases ####################################################################
alias ll 'ls -F --color=auto --group-directories-first'
alias ltr 'ls -ltrF --color=auto'
alias diff 'diff -sy --color --suppress-common-lines'
alias grep 'grep --color=auto'
alias tmux 'tmux -2'
