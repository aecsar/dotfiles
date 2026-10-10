## Setup

- Install stow
- Link dotfiles

```bash
cd ~/dotfiles

make fetch-nvim-submod

stow -t ~/.config .
stow -t ~ git

# platform:macos : update keyboard repeat rate
# https://mac-key-repeat.zaymon.dev/
```

### Install tmux tpm plugins
```bash

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux run '~/.tmux/plugins/tpm/tpm'
```

Start a tmux session then type `<Ctrl-b> I` to fetch the plugins
