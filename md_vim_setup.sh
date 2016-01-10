#!/bin/bash

cd /dev/shm && wget https://github.com/plasticboy/vim-markdown/archive/master.tar.gz
if [ ! -d ~/.vimi ]; then
	mkdir ~/.vim
fi
cd ~/.vim && tar --strip=1 -zxf /dev/shm/master.tar.gz

rm -f /dev/shm/master.tar.gz

grep vim_markdown_folding_disabled ~/.vimrc 
if [ $? -eq 1 ]; then
	echo "let g:vim_markdown_folding_disabled=1" >> ~/.vimrc
fi
