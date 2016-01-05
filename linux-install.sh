#! /bin/sh

apt-get update
apt-get upgrade

# utilities
apt-get install -y curl
apt-get install -y fail2ban
apt-get install -y git
apt-get install -y htop
apt-get install -y mosh
apt-get install -y openssh-server
apt-get install -y ufw
apt-get install -y unp
apt-get install -y vagrant
apt-get install -y vim
apt-get install -y virtualbox
apt-get install -y wakeonlan
apt-get install -y wget

# DBs
apt-get install -y mysql
apt-get install -y postgres
apt-get install -y sqlite

# languages
apt-get install -y ruby
bash rb-install.sh

apt-get install -y golang

apt-get install -y python python3 python-dev python-pip python3-dev python3-pip
apt-get install -y pypy
bash py-install.sh

apt-get install -y nodejs
apt-get install -y npm
bash js-install.sh

# lolz
apt-get install cmatrix
apt-get install cowsay
apt-get install fortune
apt-get install sl

# install tmux 2.0 (1.9+ is required for plugins)
apt-get install -y python-software-properties software-properties-common && \
    add-apt-repository -y ppa:pi-rho/dev && \
    apt-get update && \
    apt-get install -y tmux=2.0-1~ppa1~t
# install tmux package manager
bash tpm-install.sh

# install docker
wget -qO- https://get.docker.com/ | sh

# neovim
add-apt-repository -y ppa:neovim-ppa/unstable && \
    apt-get update && \
    apt-get install -y neovim

# vim-plug
bash vimplug-install.sh
# change owner to current user since curl running under sudo makes plug.vim unable to function
chown -R "$USER" ~.vim/

# install transmission
add-apt-repository -y ppa:transmissionbt/ppa && \
    apt-get update && \
    apt-get install -y transmission-cli transmission-common transmission-daemon

# install mongodb
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10 && \
    echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.0 main" | tee /etc/apt/sources.list.d/mongodb-org-3.0.list && \
    apt-get update && \
    apt-get install -y mongodb-org
