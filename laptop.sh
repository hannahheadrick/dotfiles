babushka 'dot files'

# Ruby
mkdir -p ~/.rbenv/plugins
cd ~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git
rbenv install 1.9.3-p194
rbenv global 1.9.3-p194
gem install bundler
rbenv rehash

# Redis
brew install redis
mkdir -p ~/Library/LaunchAgents
cp /usr/local/Cellar/redis/2.4.17/homebrew.mxcl.redis.plist ~/Library/LaunchAgents/
launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist


# Sublime Text 2
babushka 'Sublime Text 2.app'
ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin

# Pow
curl get.pow.cx | sh

# Vim
mkdir -p ~/.vim

# To
curl -u 'dansowter' -d '{"scopes":["repo"],"note":"For Dotfiles setup"}' \
    https://api.github.com/authorizations

# Snappier Dock and Exposé
defaults write com.apple.dock expose-animation-duration -float 0.15

# NetEngine Specific
# Codebase Rubber Secrets
git clone git@codebasehq.com:netengine/netengine/ec2-rubber-secrets.git ~/.ec2
chmod 600 ~/.ec2/*

mkdir -p ~/netengine
git clone git@github.com:MicropowerAus/teetimeslite.git ~/netengine/teetimeslite
