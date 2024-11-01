set -x ANDROID_HOME $HOME/Android/Sdk
set -x JAVA_HOME /usr/lib/jvm/java-17-openjdk/
set -x FASTLANE_USER rmills@quotetome.com

set -x ELECTRON_OZONE_PLATFORM_HINT auto

set PATH $PATH $ANDROID_HOME/tools
set PATH $PATH $ANDROID_HOME/platform_tools
set PATH $PATH $HOME/.cargo/bin/
set PATH $HOME/.node_modules/bin $PATH

starship init fish | source
mise activate fish | source

alias ls="eza -1"
alias ll="eza -l"
alias l="eza -1a"
alias diff="diff --color=auto"
alias grep="rg"

function fish_greeting
end
