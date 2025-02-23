# Set ZDOTDIR to ensure modular config is loaded
export ZDOTDIR="$HOME/.config/zsh"

# Source all modular configs
for file in $ZDOTDIR/{exports,aliases,functions,plugins}.zsh; do
  [[ -r "$file" ]] && source "$file"
done

# Load local config if it exists (machine-specific)
[[ -f "$ZDOTDIR/.zshrc.local" ]] && source "$ZDOTDIR/.zshrc.local"

