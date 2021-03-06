c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

n() { cd ~/netengine/$1; }
_n() { _files -W ~/netengine -/; }
compdef _n n

export EDITOR='subl -w'

# autocorrect is more annoying than helpful
unsetopt correct_all

# a few aliases I like
alias gs='git status'
alias gd='git diff'
alias tlog='tail -f log/development.log'

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
