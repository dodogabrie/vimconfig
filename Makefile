# Run make all to install all the stuff (prereq: nvim installed)

all: create_dir_go_to_dir plug_config
create_dir_go_to_dir:
	mkdir -p ~/.config/nvim/
	cp -r * ~/.config/nvim/ 
	cd ~/.config/nvim/
plug_config:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
	nvim +PluginInstall +qall
	sudo apt-get install nodejs 
	cd ~/.config/nvim/bundle/coc.nvim 
	npm install
	cd ../../
alias_nvim:
        echo "alias vim=\"nvim\"" >> ~/.bashrc
        echo "alias vi=\"nvim\"">> ~/.bashrc
