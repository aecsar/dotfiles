echo "Updating config..."

cp ~/.zshrc ~/dotfiles/.zshrc

cp -r ~/.config/lvim .
cp -r ~/.config/kitty .

echo "Config updated!"
