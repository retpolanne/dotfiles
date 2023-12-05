#
#/bin/bash

echo Installing tools
brew bundle

echo Installing oh-my-zsh

echo Should be interactive, at the end please get out of oh my zsh to continue installation

ls $HOME/.oh-my-zsh || sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo Installed oh-my-zsh

echo Installing vundle
ls $HOME/.vim/bundle/Vundle.vim || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo Installed vundle

echo Setting up links
ln -fns $PWD/vimrc $HOME/.vimrc
mkdir $HOME/.config/kitty/themes

ln -fns $PWD/hacker-but-cute.zsh-theme $HOME/.oh-my-zsh/themes/hacker-but-cute.zsh-theme

ln -fns $PWD/hacker-but-cute-kitty.conf $HOME/.config/kitty/themes/hacker-but-cute-kitty.conf

ln -fns $PWD/zshrc $HOME/.zshrc

kitten themes --reload-in=all hacker-but-cute

touch $HOME/hostexclusivescript.sh && chmod +x $HOME/hostexclusivescript.sh

echo Configuring emacs

rm -rf $HOME/.emacs.d $HOME/.emacs
mkdir $HOME/.config/emacs
ln -fns $PWD/emacs-init.el $HOME/.config/emacs/init.el

ln -fns $PWD/images $HOME/images
