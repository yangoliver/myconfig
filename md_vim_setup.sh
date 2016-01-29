#!/bin/bash

if [ ! -d /dev/shm ]; then
	if [ ! -d /tmp ]; then
		echo "Can't determine tmp dir, is it a Linux/Unix"
		exit 1
	fi
	TMP_DIR=/tmp
else
	TMP_DIR=/dev/shm
fi

cd ${TMP_DIR} && curl -O -L https://github.com/plasticboy/vim-markdown/archive/master.tar.gz

if [ ! -d ~/.vim ]; then
	mkdir ~/.vim
fi

cd ~/.vim && tar --strip=1 -zxf ${TMP_DIR}/master.tar.gz
rm -f ${TMP_DIR}/master.tar.gz

grep vim_markdown_folding_disabled ~/.vimrc 
if [ $? -eq 1 ]; then
	echo "let g:vim_markdown_folding_disabled=1" >> ~/.vimrc
fi
