#!/bin/bash

if [ -f ~/.bash_profile ]; then
	cp ~/.bash_profile ~/.bash_profile.orig
fi
# mac os use .bash_profile because the bash gets invoked via login way
cp .bashrc ~/.bash_profile

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
else
	mkdir -p ~/.vim/spell
fi
cp en.utf-8.add ~/.vim/spell/en.utf-8.add
