# homebrew
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH

# Java
export JAVA_HOME=$(/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v "1.8")
export PATH=$JAVA_HOME/bin:$PATH

# rbenv
eval "$(rbenv init -)"

# plenv
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# git settings
export PATH=/usr/local/Cellar/git/2.25.0_1/bin:$PATH
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[33m\]\u\[\033[0m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[0m\]\$ '

# git diff-highlight
export PATH=$PATH:/usr/local/Cellar/git/2.25.0_1/share/git-core/contrib/diff-highlight

# iTerm2 settings
PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'

# ls directory color settings
export LSCOLORS=cxfxcxdxbxegedabagacad

# NDK_ROOT for cocos2d-x
export NDK_ROOT=$HOME/Library/Android/ndk/android-ndk
export PATH=$NDK_ROOT:$PATH

# ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

# ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/local/Cellar/ant/1.10.5/libexec/bin
export PATH=$ANT_ROOT:$PATH

# ANDROID_HOME for cocos2d-x
export ANDROID_HOME=${ANDROID_SDK_ROOT}
export PATH=$ANDROID_HOME:$PATH

# golang
export GOPATH="$HOME/.go"
export PATH="$GOPATH/bin:$PATH"

# nodebrew
export PATH="$HOME/.nodebrew/current/bin:$PATH"

# nvm
if [[ -s ~/.nvm/nvm.sh ]] ; then
    source ~/.nvm/nvm.sh
fi

# load bashrc
if [ -f ~/.bashrc ] ; then
    . ~/.bashrc
fi

# local bashrc
if [ -f ~/.bashrc_local ] ; then
    source ~/.bashrc_local
fi

