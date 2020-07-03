#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Start ssh-agent
SSH_ENV=$HOME/.ssh/environment

# start the ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    eval "$(<"$XDG_RUNTIME_DIR/ssh-agent.env")"
fi

# Customize to your needs...
alias ls="exa -1"
alias ll="exa -l"
alias l="exa -1a"
alias diff="diff --color=auto"
alias grep="rg"

export PATH="$PATH:/home/richard/.cargo/bin/"
export PATH="$PATH:$(yarn global bin)"

export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"

export PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix="$HOME/node_modules"

