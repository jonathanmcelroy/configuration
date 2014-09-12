#!/usr/bin/env bash
WORKTREE=$HOME/configuration/

mkdir -p $WORKTREE

cd $WORKTREE
if ! [ -d .git ]; then
    git clone https://github.com/jonathanmcelroy/configuration.git $WORKTREE
else
    git pull
fi

if ! [ -d $HOME/.vim/bundle/vundle ]; then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
fi

cp .vimrc ~/.vimrc
cp .cppuseful/ ~/.cppuseful -rf
cp .cuseful/ ~/.cuseful -rf
cp ./bin/uploadConfig.sh ~/bin/uploadConfig.sh
cp ./bin/addComments.sh ~/bin/addComments.sh
cp ./bin/downloadConfig.sh ~/bin/downloadConfig.sh