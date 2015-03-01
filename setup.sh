#!/bin/bash
echo "Installing dot files to ${HOME}"
echo `ln -sf ${HOME}/.dotfiles/.vimrc ${HOME}`
echo `ln -sf ${HOME}/.dotfiles/.virc ${HOME}`
echo `ln -sf ${HOME}/.dotfiles/.vim ${HOME}`
echo `ln -sf ${HOME}/.dotfiles/.bashrc ${HOME}`
echo `ln -sf ${HOME}/.dotfiles/.pylintrc ${HOME}`
echo `ln -sf ${HOME}/.dotfiles/.tmux.conf ${HOME}`
