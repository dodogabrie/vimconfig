# Run make all to install all the stuff (prereq: nvim installed)

all: create_dir copy_to_dir move_to_dir 
create_dir:
	mkdir ~/.config/nvim/
copy_to_dir:
	cp * ~/.config/nvim/ 
move_to_dir:
	cd ~/.config/nvim/
clone_vundle:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/
