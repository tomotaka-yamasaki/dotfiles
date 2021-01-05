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
