# virtualenv settings
export WORKON_HOME=~/.envs
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

# Add git branch to the shell
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# to get pipenv to work properly
export LC_ALL='sv_SE.UTF-8'
export LANG='sv_SE.UTF-8'

[ -s "~/.jabba/jabba.sh" ] && source "~/.jabba/jabba.sh"
