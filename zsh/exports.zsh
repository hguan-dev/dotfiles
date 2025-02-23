# System Paths
export PATH="/bin:/sbin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:$HOME/.local/bin:$HOME/bin"

# Homebrew (Cross-platform)
if [[ -d "/opt/homebrew/bin" ]]; then
    export PATH="/opt/homebrew/bin:$PATH"
elif [[ -d "/usr/local/bin" ]]; then
    export PATH="/usr/local/bin:$PATH"
fi

# Homebrew paths
if command -v brew &>/dev/null; then
    export PATH="$(brew --prefix llvm)/bin:$PATH"
    export PATH="$(brew --prefix openjdk@21)/bin:$PATH"
    export CPPFLAGS="-I$(brew --prefix openjdk@21)/include"
    export JAVA_HOME="$(brew --prefix openjdk@21)"
fi

# Default Editor
export EDITOR="nvim"
export VISUAL="nvim"

# History Config
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE="$HOME/.zsh_history"

