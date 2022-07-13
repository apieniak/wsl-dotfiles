build:
	sudo apt-get install zsh
	curl -L git.io/antigen > ~/antigen.zsh
	mkdir ~/.ssh
	sudo apt-get install keychain
	sudo apt install bat
	sudo ln -s /usr/bin/batcat /usr/local/bin/bat
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	cp .bashrc ~/.bashrc
	cp .zshrc ~/.zshrc
	~/.fzf/install
update:
	cp .bashrc ~/.bashrc
	cp .zshrc ~/.zshrc