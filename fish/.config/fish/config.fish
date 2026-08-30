set -x ELECTRON_OZONE_PLATFORM_HINT auto

set PATH $PATH $HOME/.cargo/bin/

starship init fish | source
mise activate fish | source

alias ls="eza -1"
alias ll="eza -l"
alias l="eza -1a"
alias diff="diff --color=auto"
alias grep="rg"
alias aider="aider --model deepseek/deepseek-chat --no-auto-commits --architect"

function fish_greeting
end

# pnpm
set -gx PNPM_HOME "/home/richard/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
