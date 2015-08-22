#1 /bin/sh

apt-get install git
apt-get install vim
apt-get install unp
apt-get install htop
apt-get install tmux

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

apt-get install golang
apt-get install python python3 python-dev python-pip python3-dev python3-pip

add-apt-repository ppa:neovim-ppa/unstable
apt-get update
apt-get install neovim

