if status is-interactive
# Commands to run in interactive sessions can go here
end

starship init fish | source
zoxide init fish | source

set -U fish_greeting ""

# Aliases
abbr -a cna "bun create next-app@latest --tailwind --eslint --ts --app --src-dir --import-alias '~/*' --empty --use-bun"
abbr -a gaa "git add --all"
abbr -a gc "git commit -m"
abbr -a gp "git push"
abbr -a gs "git status"
abbr -a c "clear"
abbr -a e "exit"
abbr -a glo "git log --oneline"
abbr -a bd "bun dev"
abbr -a start-mongo "~/binaries/mongodb-macos-x86_64-8.0.12/bin/mongod --config ~/mongodb.conf"
abbr -a emacs "~/.config/emacs/bin/doom emacs -nw"
abbr -a tunnel-ngrok "ngrok http \$PORT --url \$NGROK_DOMAIN"
abbr -a k "kubectl"
abbr -a gotest "go run -mod=mod github.com/rakyll/gotest@latest -v ./..."
abbr -a pn "pnpm"
abbr -a pnx "pnpm exec"
abbr -a bun "pnpm"
abbr -a pnd "pnpm dlx"

# Environment
set -x EDITOR nvim

# bun wrapper function
function bun
    switch $argv[1]
        case test
            command bun run test $argv[2..]
        case build
            command bun run build $argv[2..]
        case '*'
            command bun $argv
    end
end

# Paths
set -x XDG_CONFIG_HOME "$HOME/.config"

set -x BUN_INSTALL "$HOME/.bun"
fish_add_path "$BUN_INSTALL/bin"

fish_add_path "$HOME/tools/flutter/bin"
fish_add_path "$HOME/tools/go-tasks"

fish_add_path "$XDG_CONFIG_HOME/composer/vendor/bin"

fish_add_path "$HOME/.local/bin"
fish_add_path "$HOME/go/bin"

fish_add_path "/usr/local/Cellar/openvpn/2.6.13/sbin"

fish_add_path "/Users/Shared/DBngin/postgresql/17.0/bin"

fish_add_path "$HOME/.config/composer/vendor/bin"

fish_add_path "/usr/local/share/google-cloud-sdk/bin"

set -x ANDROID_HOME "$HOME/Library/Android/sdk"

set -x PNPM_HOME "$HOME/Library/pnpm"
fish_add_path "$PNPM_HOME"

# Prevent Ctrl-D from closing the shell (equivalent to zsh's setopt ignoreeof)
set -x fish_exit_on_read_error 0
bind \cd ""
