echo "Installing config..."

# cp ~/dotfiles/.zshrc ~/.zshrc

cp -r ./lvim ~/.config/lvim
cp -r ./kitty ~/.config/kitty

cp ./zed/settings.json ~/.config/zed/settings.json
cp ./ghostty/config ~/.config/ghostty/config

# cp -r ./tmux/ ~/.config/tmux/tmux.conf

echo "Config installed!"
