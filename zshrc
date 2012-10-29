ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dansowter"

plugins=(git gem rails ruby brew history-substring-search rbenv bundler dansowter)

export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export JAVA_HOME=`/usr/libexec/java_home -v 1.6`
export EDITOR="subl -w"
export NE_INTERNAL_FOLDER=$HOME/Dropbox/NE/internal

source $NE_INTERNAL_FOLDER/service_credentials.sh
source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias gti="git"
alias lg="git lg"
alias s="subl ."
alias sling="slanger --app_key 'slanger_development_key' --secret 'slanger_development_secret'"
# alias brake="mkdir -p ~/.brakeman && brakeman -o ~/.brakeman/brakeman_output.html && open ~/.brakeman/brakeman_output.html"
# alias triggerapp="cd ~/netengine/triggerapp/"
# alias tee="cd ~/netengine/tee_times_lite/"
