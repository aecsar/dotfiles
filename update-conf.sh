echo "Updating config..."

cp ~/.zshrc ~/dotfiles/.zshrc

cp -r ~/.config/lvim .
cp -r ~/.config/nvim .
cp -r ~/.config/kitty .

if [ ! -d "./zed" ]; then
    mkdir ./zed
fi

if [ ! -d "./ghostty" ]; then
  mkdir ./ghostty
fi

cp ~/.config/zed/settings.json ~/dotfiles/zed/settings.json
cp ~/.config/ghostty/config ~/dotfiles/ghostty/config

if [ ! -d "./tmux" ]; then
    mkdir ./tmux
fi

cp -r ~/.config/tmux/tmux.conf ./tmux/

echo "Config updated!"
