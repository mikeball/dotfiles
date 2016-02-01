# pare down what is before the prompt.
# export PS1="\n\e[0;37m\w \e[0;36m> \e[0m"
# ∴

# for homebrew
export PATH=/usr/local/bin:~/bin:$PATH

# add local bin to path
export PATH=$PATH:~/bin

# so we can use psql within postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

export VAGRANT_HOME=/Volumes/Storage/Machines/.vagrant.d

# editor shortcuts
alias st='open -a "Sublime Text"'
alias am='open -a "Aquamacs"'
alias em='open -a "Emacs"'
alias lt='open -a "LightTable"'

# command shortcuts
alias flushdns='dscacheutil -flushcache'
alias le='lein'
alias airplayroom4='java -jar ~/bin/airplay.jar -d -h 192.168.113.111'

# better colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad




export L2CRM_API_PASSWORD=password

