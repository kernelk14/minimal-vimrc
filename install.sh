#!/bin/sh

if [ -f $HOME/.vimrc ]; then
	echo "An existing vimrc file has been detected! creating a backup."
	mv $HOME/.vimrc $HOME/.vimrc-bak
	cp ./.vimrc $HOME/.vimrc
	echo ".vimrc: done."
    ls -aH | grep ".vimrc"
else
	echo "Copying the vimrc file in your home folder."
	cp ./.vimrc $HOME/.vimrc
	echo ".vimrc: done."
    ls -aH | grep ".vimrc"
fi

if [ -d $HOME/.vim ]; then
	echo "An existing vim folder has been detected! creating a backup."
	mv $HOME/.vim $HOME/.vim-bak
	cp -r ./.vim $HOME/.vim
	echo ".vim: done"
    ls -aH | grep ".vim"
else
	echo "Copying the vim folder in your home folder."
	cp -r ./.vim $HOME/.vim
	echo ".vim: done"
    ls -aH | grep ".vim"
fi


