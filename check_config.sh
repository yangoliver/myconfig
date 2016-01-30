#!/bin/bash

if [ -f ~/.bashrc ]; then
	diff -u .bashrc ~/.bashrc
fi

if [ -f ~/.bash_profile ]; then
	diff -u .bashrc ~/.bash_profile
fi

if [ -f ~/cs_bld.sh ]; then
	diff -u cs_bld.sh ~/cs_bld.sh
fi

if [ -f ~/.vim/spell/en.utf-8.add ]; then
	diff -u en.utf-8.add ~/.vim/spell/en.utf-8.add
fi

if [ -f ~/.gitconfig ]; then
	diff -u  .gitconfig ~/.gitconfig
fi

if [ -f ~/.msmtprc ]; then
	diff -u .msmtprc ~/.msmtprc
fi

if [ -f ~/.screenrc ]; then
	diff -u .screenrc ~/.screenrc
fi

if [ -f ~/.vimrc ]; then
	diff -u .vimrc ~/.vimrc
fi
