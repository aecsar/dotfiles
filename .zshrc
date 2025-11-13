eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# bun completions
[ -s "/Users/aecsar/.bun/_bun" ] && source "/Users/aecsar/.bun/_bun"

export XDG_CONFIG_HOME="$HOME/.config"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/Users/aecsar/.bun/bin:$PATH"
export PATH="$HOME/tools/flutter/bin/:$HOME/tools/go-tasks/:$PATH"
export PATH="/Users/aecsar/.local/bin:$HOME/go/bin:/usr/local/Cellar/openvpn/2.6.13/sbin:$PATH"
export PATH=/Users/aecsar/.local/bin:/Users/Shared/DBngin/postgresql/17.0/bin:$PATH
export PATH=/Users/Shared/DBngin/postgresql/17.0/bin:$PATH

alias cna="bun create next-app@latest --tailwind --eslint --ts --app --src-dir --import-alias '~/*' --empty --use-bun"
alias gaa="git add --all"
alias gc="git commit -m"
alias gp="git push"
alias gs="git status"
alias c="clear"
alias e="exit"
alias glo="git log --oneline"
alias bd="bun dev"
alias start-mongo="~/binaries/mongodb-macos-x86_64-8.0.12/bin/mongod --config ~/mongodb.conf"

alias cd="z"

alias gotest="go run -mod=mod github.com/rakyll/gotest@latest -v ./..."

alias pn="pnpm"
alias pnx="pnpm exec"
alias pnd="pnpm dlx"

alias notes="cd /Users/aecsar/Library/Mobile\ Documents/com~apple~CloudDocs/notes && nvim"

export NVM_DIR="$HOME/.nvm"

export ANDROID_HOME=/Users/aecsar/Library/Android/sdk

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/aecsar/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/aecsar/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
# . "/Users/aecsar/.deno/env"
export PATH="/usr/local/opt/go@1.24/bin:$PATH"
