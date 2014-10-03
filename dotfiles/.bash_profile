unset PROMPT_COMMAND

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# All variables below may be setted by LC_ALL.
export LC_COLLATE="C"
export LC_CTYPE="UTF-8"
export LC_MESSAGES="C"
export LC_MONETARY="C"
export LC_NUMERIC="C"
export LC_TIME="C"

export EDITOR="vim"

source liquidprompt/liquidprompt

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

PATH=${PATH/:\/usr\/local\/bin/}

PATH="/usr/local/bin:$PATH"

PATH="/usr/local/share/npm/bin:$PATH"

PATH="$HOME/bin:$PATH"

PATH=${PATH/\/usr\/sbin/\/usr\/local\/sbin:\/usr\/sbin}

export PATH="$(brew --prefix josegonzalez/php/php55)/bin:$PATH"

export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

export CLICOLOR="1"
export LSCOLORS="GxFxCxDxBxegedabagaced"

alias gnetstat="sudo lsof -i -nP"
alias rm-broken-links="find -L . -type l | xargs -t -I {} rm {}"
alias ll='ls -alFh'
alias la='ls -lAht'

alias grepc="grep --color=always"

alias hidden-files-show="defaults write com.apple.finder AppleShowAllFiles -bool true; killall Finder;"
alias hidden-files-hide="defaults write com.apple.finder AppleShowAllFiles -bool false; killall Finder;"

alias vihosts="sudo vim /etc/hosts"

alias nginx.start='sudo nginx -t && sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.stop='sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.restart='nginx.stop && nginx.start'

alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php55.plist"
alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php55.plist"
alias php-fpm.restart='php-fpm.stop && php-fpm.start'

alias mysql.start="launchctl load -w /usr/local/opt/mysql/homebrew.mxcl.mysql.plist"
alias mysql.stop="launchctl unload -w /usr/local/opt/mysql/homebrew.mxcl.mysql.plist"
alias mysql.restart='mysql.stop && mysql.start'

alias nginx.logs.error='tail -250f /usr/local/etc/nginx/logs/error.log'
alias nginx.logs.access='tail -250f /usr/local/etc/nginx/logs/access.log'
alias nginx.logs.default.access='tail -250f /usr/local/etc/nginx/logs/default.access.log'
alias nginx.logs.default-ssl.access='tail -250f /usr/local/etc/nginx/logs/default-ssl.access.log'

alias postgres.start='launchctl load -w /usr/local/Cellar/postgresql/9.3.5_1/homebrew.mxcl.postgresql.plist'
alias postgres.stop='launchctl unload -w /usr/local/Cellar/postgresql/9.3.5_1/homebrew.mxcl.postgresql.plist'
alias postgres.restart='postgres.stop & postgres.start'

alias add-delimeter-to-dock="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}' && killall Dock"


source ~/web/symfony2-autocomplete/symfony2-autocomplete.bash

# https://www.modern.ie/en-us/virtualization-tools#downloads
