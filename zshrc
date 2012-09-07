ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dansowter"

plugins=(git gem rails ruby brew history-substring-search rbenv bundler dansowter)

export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export EDITOR="subl -w"

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias gti="git"
alias lg="git lg"
# alias brake="mkdir -p ~/.brakeman && brakeman -o ~/.brakeman/brakeman_output.html && open ~/.brakeman/brakeman_output.html"
# alias triggerapp="cd ~/netengine/triggerapp/"
# alias tee="cd ~/netengine/tee_times_lite/"