set -x ANDROID_HOME $HOME/Android/Sdk
set -x JAVA_HOME /usr/lib/jvm/java-17-openjdk/
set -x FASTLANE_USER rmills@quotetome.com

set PATH $PATH $ANDROID_HOME/tools
set PATH $PATH $ANDROID_HOME/platform_tools
set PATH $PATH $HOME/.cargo/bin/
set PATH $HOME/.node_modules/bin $PATH

starship init fish | source
rtx activate fish | source

alias ls="exa -1"
alias ll="exa -l"
alias l="exa -1a"
alias diff="diff --color=auto"
alias grep="rg"

function fish_greeting
end
