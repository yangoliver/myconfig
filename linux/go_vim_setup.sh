#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "add this into ~/.vimrc: execute pathogen#infect()"

grep "pathogen" ~/.vimrc
if [ $? -eq 1 ]; then
	echo "execute pathogen#infect()" >> ~/.vimrc
fi

git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go

vim -c "GoInstallBinaries" -c "qa"

echo "Or run :GoInstallBinaries under vim"

echo "please refer to: https://github.com/fatih/vim-go-tutorial#quick-setup\n"
