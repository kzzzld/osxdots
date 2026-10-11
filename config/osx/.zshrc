# Plugins
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /opt/homebrew/share/zsh-you-should-use/you-should-use.plugin.zsh
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
set -o vi
eval "$(starship init zsh)"

# Aliases
alias l=ls
alias ls="eza --icons=always --color=always"
alias ll="eza -l --icons=always --color=always"
alias la="eza -a --icons=always --color=always"
alias lla="eza -la --icons=always --color=always"
alias tree="eza --tree --icons=always --color=always"

# env
export EDITOR="nvim"
