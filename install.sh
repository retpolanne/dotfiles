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

ln -fns $PWD/kitty.conf $HOME/.config/kitty/kitty.conf

ln -fns $PWD/zshrc $HOME/.zshrc

kitten themes --reload-in=all hacker-but-cute

touch $HOME/host-exclusive-script.sh && chmod +x $HOME/host-exclusive-script.sh

echo Configuring emacs

rm -rf $HOME/.emacs.d $HOME/.emacs
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
ln -fns $PWD/emacs-init.el $HOME/.config/doom/init.el
ln -fns $PWD/emacs-config.el $HOME/.config/doom/config.el
ln -fns $PWD/emacs-packages.el $HOME/.config/doom/packages.el
mkdir $HOME/.config/doom/themes
ln -fns $PWD/doom-anne-pastel-theme.el $HOME/.config/doom/themes/doom-anne-pastel-theme.el

ln -fns $PWD/images $HOME/images

$(brew --prefix)/opt/fzf/install
mkdir -p $HOME/.docker/cli-plugins
ln -sfn $(brew --prefix)/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose

sudo mkdir /etc/resolver; sudo cp minikube-test-dns /etc/resolver/minikube-test
ln -fns $PWD/mbsyncrc ~/.mbsyncrc
mbsync --config ~/.mbsyncrc retpolanne@posteo
mu init --maildir=~/mail --my-address=retpolanne@posteo.net
ln -fns $PWD/gpg-agent.conf ~/.gnupg/gpg-agent.conf
gpgconf --kill gpg-agent
