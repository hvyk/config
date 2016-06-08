# should be run with sudo
apt-get upgrade
apt-get update
apt-get install git vim python-pip

pip install virtualenv virtualenvwrapper

git clone https://github.com/hvyk/config.git
if [ -f ~/.bashrc ]
then
    rm ~/.bashrc
fi
ln -s ~/config/.bashrc ~/.bashrc
source ~/.bashrc

if [ -f ~/.vimrc ]
then
    rm ~/.vimrc
fi
ln -s ~/config/.vim/.vimrc ~/.vimrc

if [ -d ~/.vim ]
then
    rm -r ~/.vim
fi
ln -s ~/config/.vim ~/.vim

ln -s ~/config/preactivate ~/.virtualenvs/preactivate
ln -s ~/config/postactivate ~/.virtualenvs/postactivate


