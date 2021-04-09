# git settings
export PATH=/usr/local/Cellar/git/2.31.0/bin:$PATH

## git-promptの読み込み
source ~/.zsh/git-prompt.sh

## git-completionの読み込み
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

## プロンプトのオプション表示設定
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

## プロンプトの表示設定(好きなようにカスタマイズ可)
setopt PROMPT_SUBST ; PS1='%F{yellow}%n%f:%F{cyan}%~%f%F{red}$(__git_ps1 "[%s]")%f\$ '

## git diff-highlight
export PATH=$PATH:/usr/local/Cellar/git/2.31.0/share/git-core/contrib/diff-highlight

# iTerm2 settings
PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'

# ls directory color settings
export LSCOLORS=cxfxcxdxbxegedabagacad

# nvm
if [[ -s ~/.nvm/nvm.sh ]] ; then
    source ~/.nvm/nvm.sh
fi

# zsh-completions
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

# local zshrc
if [ -f ~/.zshrc_local ] ; then
    source ~/.zshrc_local
fi

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
alias pbcopy='pbcopy && pbpaste'

# git alias
alias git-branch-D-all='git branch | egrep -v "\*" | xargs git branch -D'
alias git-add-nf='git add `awk "{print $NF}"`'

# gcc alias
alias gcc6='/usr/local/Cellar/gcc/6.3.0_1/bin/gcc-6'
alias g++6='/usr/local/Cellar/gcc/6.3.0_1/bin/g++-6'
