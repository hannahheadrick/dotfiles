

curl -u 'dansowter' -d '{"scopes":["repo"],"note":"For Dotfiles setup"}' \
    https://api.github.com/authorizations

mkdir -p ~/.rbenv/plugins
cd ~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git
rbenv install 1.9.3-p194 

babushka 'Sublime Text 2.app'
ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin