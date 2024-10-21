# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/aecsar/.zsh/completions:"* ]]; then export FPATH="/Users/aecsar/.zsh/completions:$FPATH"; fi
eval "$(starship init zsh)"
source <(fzf --zsh)

# eval "$(oh-my-posh init zsh)"

lvim() {
  if [[ "$1" == "." ]]; then
    command lvim
  else
    command lvim "$@"
  fi
}

# bun completions
[ -s "/Users/aecsar/.bun/_bun" ] && source "/Users/aecsar/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/tools/flutter/bin/:$PATH"
export PATH="/Users/aecsar/.local/bin:$PATH"

alias cna="bun create next-app@latest --tailwind --eslint --ts --app --src-dir --import-alias '~/*' --empty --use-bun"
alias gaa="git add --all"
alias gc="git commit -m"
alias gp="git push"
alias gs="git status"
alias c="clear"
alias e="exit"
alias glo="git log --oneline"
alias bd="bun dev"
alias nvim="lvim"

alias pn="pnpm"
alias pnx="pnpm exec"
alias pnd="pnpm dlx"

alias sma="cd code/work/sma/shopmeaway"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/aecsar/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
. "/Users/aecsar/.deno/env"
