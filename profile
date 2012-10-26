# add local bin to path
export PATH=~/bin:$PATH


# MacPorts Installer addition on 2010-05-10_at_00:11:21: adding an appropriate PATH variable for use with MacPorts.
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# add postgres to path
# export PATH=/opt/local/lib/postgresql90/bin/:$PATH
# setenv PGDATA /opt/local/var/db/postgresql90/defaultdb



[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

alias st='open -a "Sublime Text 2"'
alias em='open -a "Emacs"'


export BEES_HOME=~/sdk/cloudbees-sdk-0.8.1
export PATH=$PATH:$BEES_HOME
