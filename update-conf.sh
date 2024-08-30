echo "Updating config..."

cp ~/.zshrc ~/dotfiles/.zshrc

cp -r ~/.config/lvim .
cp -r ~/.config/kitty .

if [ ! -d "./tmux" ]; then
    mkdir ./tmux
fi

cp -r ~/.config/tmux/tmux.conf ./tmux/

echo "Config updated!"
