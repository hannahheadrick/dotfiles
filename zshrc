ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dansowter"

plugins=(git gem rails ruby brew history-substring-search rbenv bundler dansowter)

export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/lib/node_modules:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home'
export EDITOR="subl3 -w"
export NE_INTERNAL_FOLDER=$HOME/Dropbox/NE/internal
export PRIVATE_SOURCE=$HOME/Dropbox/code

source $NE_INTERNAL_FOLDER/service_credentials.sh
source $PRIVATE_SOURCE/private_source.sh
source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias gti="git"
alias lg="git lg"
alias s="subl3 ."
alias l='ls -alrth'
alias prune="git fetch origin --prune; git branch --merged master | grep -v 'master$' | xargs git branch -d"
