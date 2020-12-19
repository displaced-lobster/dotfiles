set ANDROID_HOME $HOME/Android/Sdk
set PATH $PATH $ANDROID_HOME/tools
set PATH $PATH $ANDROID_HOME/platform_tools
set PATH $PATH $HOME/.cargo/bin/
set PATH $HOME/.node_modules/bin $PATH

bass source /usr/share/nvm/init-nvm.sh

starship init fish | source

alias ls="exa -1"
alias ll="exa -l"
alias l="exa -1a"
alias diff="diff --color=auto"
alias grep="rg"
