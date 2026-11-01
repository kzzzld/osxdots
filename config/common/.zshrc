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

# SSH
if [[ $OSTYPE == darwin* && -f ~/.ssh/id_ed25519 ]]; then
  ssh-add --apple-use-keychain ~/.ssh/id_ed25519 >/dev/null 2>/dev/null
fi

# env
export EDITOR="nvim"
