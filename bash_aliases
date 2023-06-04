# General
alias ls="ls --color=yes"
alias ec="emacsclient -n"
alias fics="xboard -size Medium -ics -icshost freechess.org"
alias diff=colordiff

# feh: sure there must be a better was to do this (though I'm not sure why it bothers me so much compared to other stuff)
# -F fullscreen, -Z auto zoom to screen size, -d show (draw) filename, -r recursively descend into directory args
# Other potential options of interest: -x create borderless windows, presumably irrelevant in a borderless WM
alias feh='feh -FZdr'

# Git shortcuts
alias gs="git status"
alias gl="git log"
alias gd="git diff"
alias gdc="git diff --cached"
alias ga="git add"
alias gap="git add -p"
alias gc="git commit"
alias gca="git commit --amend --no-edit"
alias gsh="git show"
alias gsw="git show -w"
alias gp="git push"
alias gpf="git pull --ff-only"

alias dialyzer="dialyzer --no_check_plt -Wno_unused -Wunmatched_returns -Werror_handling -Wunderspecs"
