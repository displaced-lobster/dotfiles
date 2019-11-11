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

# Customize to your needs...
alias ls="exa -1"
alias ll="exa -l"
alias l="exa -1a"
alias diff="diff --color=auto"
alias grep="rg"

export PATH="$PATH:/home/richard/.cargo/bin/"
