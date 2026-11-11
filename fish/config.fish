starship init fish | source
zoxide init fish | source

set -U fish_greeting ""

# Aliases
abbr -a gaa "git add --all"
abbr -a gc "git commit -m"
abbr -a gp "git push"
abbr -a gs "git status"
abbr -a c "clear"
abbr -a glo "git log --oneline"
abbr -a tunnel-ngrok "ngrok http \$PORT --url \$NGROK_DOMAIN"
abbr -a k "kubectl"
abbr -a pn "pnpm"
abbr -a pnx "pnpm exec"
abbr -a bun "pnpm"
abbr -a pnd "pnpm dlx"
abbr -a vim "nvim"
abbr -a v "nvim"

# Environment
set -x EDITOR nvim

# Paths
set -x XDG_CONFIG_HOME "$HOME/.config"

fish_add_path "$HOME/bin"
fish_add_path "$HOME/.local/bin"

fish_add_path "$HOME/go/bin"
fish_add_path "$HOME/.cargo/bin"
fish_add_path "$HOME/Library/pnpm/bin"

fish_add_path "/usr/local/share/google-cloud-sdk/bin"
