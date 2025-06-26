install:
	ln -s ~/.config/.zshrc ~/.zshrc
	ln -s ~/.config/.gitconfig ~/.gitconfig
	brew bundle --file=~/.config/Brewfile

update:
	brew bundle dump --file=~/.config/Brewfile

