# Path to your oh-my-zsh installation.
export ZSH=/Users/ben/.oh-my-zsh

# Virtual Env
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /Library/Frameworks/Python.framework/Versions/3.6/bin/virtualenvwrapper.sh
alias workoff='deactivate'

# Theme
ZSH_THEME="af-magic"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(  
  git
  virtualenv
)

source $ZSH/oh-my-zsh.sh

# Git Alias
alias gs="git status"
alias push="git pull && git push"

# Python Alias
alias py3="python3"
alias py="python"

# Task Warrior Functions
function today(){ echo;  echo $(date +%a-%m-%d-%Y-%H:%M); task due.before:tomorrow list; }
function assignments(){ echo; echo $(date +%a-%m-%d-%Y-%H:%M); task project:assignments list; }
function tasks(){ echo; echo $(date +%a-%m-%d-%Y-%H:%M); task list; }

# The fuck alias
eval $(thefuck --alias)

# Custom Prompts
prompt_context(){}

prompt_dir() {
    prompt_segment blue black "%$(( $COLUMNS - 53 ))<...<%~%<<"
}

s() {
    if [ -z "$1" ]; then 
	subl .
    else 
	subl "$1"
    fi
}

# added by travis gem
[ -f /Users/ben/.travis/travis.sh ] && source /Users/ben/.travis/travis.sh

clear

alias matlab='/Applications/MATLAB_R2017b.app/bin/matlab -nodesktop'
