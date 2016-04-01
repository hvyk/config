alias l='ls -alF'
alias la='ls -A'
alias ll='ls -CF'

# aliases for virtualenvwrapper
alias v='workon'
alias v.mk='mkvirtualenv'
alias v.de='deactivate'
alias v.rm='rmvirtualenv'

alias momentics='~/qnx/qnx660/run-qde.sh'

alias untar='tar -zxvf'
alias rmf='rm -rf'
alias open='xdg-open . &'
alias utest='scons --site-dir=../site_scons --platform=posix utest'
alias pipi='pip install --proxy http://force-proxy-o365.pac.schneider-electric.com:80'

alias ubclean='make CROSS_COMPILE=arm-linux-gnueabihf- distclean'
alias ubbuild='make CROSS_COMPILE=arm-linux-gnueabihf- O=am43xx_evm am43xx_evm_config all'
