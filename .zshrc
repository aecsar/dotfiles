eval "$(starship init zsh)"

lvim() {
  if [[ "$1" == "." ]]; then
    command lvim
  else
    command lvim "$@"
  fi
}

alias cna="bun create next-app@latest --tailwind --eslint --ts --app --src-dir --import-alias '~/*' --empty --use-bun"
alias gaa="git add --all"
alias gc="git commit -m"
alias gp="git push"
alias gs="git status"
alias c="clear"
alias e="exit"
alias glo="git log --oneline"
alias bd="bun dev"

alias pn="pnpm"
# alias nvim="lvim"
alias kaseeji="lvim ~/code/hustle/kaseeji/"
alias sma="lvim ~/code/work/sma/shopmeaway/"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:/Users/ameer/.local/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/ameer/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/Users/ameer/.bun/_bun" ] && source "/Users/ameer/.bun/_bun"
