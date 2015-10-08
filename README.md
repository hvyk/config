This takes care of the .bashrc, .bash_aliases, virtualenv postactivate, and the .vim directory

symlink ~/.bashrc to config/.bashrc
symlink ~/.bash_aliases to config/.bash_aliases
symlink ~/.vimrc to config/.vim/.vimrc

source .bash_profile from ~/.virtualenvs/postactivate to ensure that the same command prompt is being used both with and without  virtualenv
