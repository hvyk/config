# should be run with sudo
apt-get upgrade
apt-get update
apt-get install git vim python-pip

pip install virtualenv virtualenvwrapper

git clone https://github.com/hvyk/config.git
ln -s ~/config/.bashrc ~/.bashrc
ln -s ~/config/.vim ~/.vim
ln -s ~/config/.vim/.vimrc ~/.vim/.vimrc
ln -s ~/config/preactivate ~/.virtualenvs/preactivate
ln -s ~/config/postactivate ~/.virtualenvs/postactivate


