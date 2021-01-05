# alias
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias ls='ls -G'
alias ks='ls -G'
alias ll='ls -l'
alias llh='ls -lh'
alias cf='cd'
alias ctags='/usr/local/bin/ctags'
alias gcc='gcc -Wall -lm'

# git alias
alias git-branch-D-all='git branch | egrep -v "\*" | xargs git branch -D'
alias git-add-nf='git add `awk "{print $NF}"`'

# gcc alias
alias gcc6='/usr/local/Cellar/gcc/6.3.0_1/bin/gcc-6'
alias g++6='/usr/local/Cellar/gcc/6.3.0_1/bin/g++-6'
