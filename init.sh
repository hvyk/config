if [ "$1" == "install" ]; then
    apt-get upgrade
    apt-get update
    apt-get install git vim python-pip
    pip install --upgrade pip
    pip install virtualenv virtualenvwrapper
elif [ "$1" == "setup" ]; then
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

    if [ -f ~/.virtualenvs/preactivate  ]
    then
        rm ~/.virtualenvs/preactivate  
    fi

    if [ -f ~/.virtualenvs/postactivate  ]
    then
        rm ~/.virtualenvs/postactivate  
    fi

    ln -s ~/config/preactivate ~/.virtualenvs/preactivate
    ln -s ~/config/postactivate ~/.virtualenvs/postactivate

    echo "Please enter your email for Git configuration"
    read email
    echo "Please enter your full name for Git configuration"
    read name

    git config --global user.email "$email"
    git config --global user.name "$name"

else

    echo "usage: init.sh [install|setup]"
    echo "          - install requires sudo"
    echo "          - setup doesn't require sudo"
fi

