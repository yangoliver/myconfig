#!/bin/bash

if [ -f ~/.bashrc ]; then
	cp ~/.bashrc ~/.bashrc.orig
fi
cp .bashrc ~/.bashrc

cp cs_bld.sh ~/cs_bld.sh

if [ -f ~/.gitconfig ]; then
	cp ~/.gitconfig ~/.gitconfig.orig
fi
cp .gitconfig ~/.gitconfig

if [ -f ~/.msmtprc ]; then
	cp ~/.msmtprc ~/.msmtprc.orig
fi
cp .msmtprc ~/.msmtprc

if [ -f ~/.screenrc ]; then
	cp ~/.screenrc ~/.screenrc.orig
fi
cp .screenrc ~/.screenrc

if [ -f ~/.vimrc ]; then
	cp ~/.vimrc ~/.vimrc.orig
fi
cp .vimrc ~/.vimrc

if [ -f ~/.vim/spell/en.utf-8.add ]; then
	cp ~/.vim/spell/en.utf-8.add ~/.vim/spell/en.utf-8.add.orig
	cp en.utf-8.add ~/.vim/spell/en.utf-8.add
fi
