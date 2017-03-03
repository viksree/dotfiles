## General configuration

# Path to your oh-my-zsh installation.
export ZSH=/Users/vikram/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Set the name of the default user.
DEFAULT_USER="vikram"

# Plugins -- currently only using the git and brew plugins.
plugins=(git brew)


## User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Import bash aliases.
source ~/.bash_profile

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
