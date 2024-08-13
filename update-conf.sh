echo "Updating config..."

cp ~/.zshrc ~/dotfiles/.zshrc

cp -r ~/.config/lvim .
cp -r ~/.config/kitty .

mkdir ./tmux
cp -r ~/.config/tmux/tmux.conf ./tmux/

echo "Config updated!"
