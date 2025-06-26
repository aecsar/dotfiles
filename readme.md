gitconfig
zshrc
nvim
ghostty

## tmux setup

```bash
brew install tmux

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# start a tmux session

tmux run '~/.tmux/plugins/tpm/tpm'

# then type `<Ctrl-b> I` to fetch the plugins
```
