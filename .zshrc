# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set the zsh theme.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/themes to change themes.
ZSH_THEME="garyblessington"

# Set the default user so that it hides "user@hostname"
DEFAULT_USER="vikram"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files in git as dirty.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Adds the z, git, and zsh syntax syntax highlighting plugins.
plugins=(z git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=":/usr/local/bin:/usr/local/opt/ruby/bin:# default paths:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin:/Users/vikram/.rvm/bin:/Users/vikram/.rvm/bin"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Source .bash_profile to read aliases.
source ~/.bash_profile
