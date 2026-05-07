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
fish_add_path /home/aecsar/go/bin
