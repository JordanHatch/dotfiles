source ~/.aliases

export EDITOR='vim'
export PATH="~/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:/opt/boxen/homebrew/share/python:/usr/local/share/python:$HOME/.rbenv/bin:/usr/local/heroku/bin:$PATH"
export GOPATH="${HOME}/dev/go"

#
# source all of the scripts in ~/.bashrc.d
#
for f in $(ls ~/.bashrc.d/*.bash) ; do . $f; done

#
# If we have boxen installed, source the Boxen environment
#
if [ -f /opt/boxen/env.sh ]; then
  source /opt/boxen/env.sh
fi

#
# Add bash_autocompletion for brew
#
if type brew &>/dev/null && [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

#
# If rbenv is installed, enable shims and autocompletion
#
if type rbenv &>/dev/null; then
  eval "$(rbenv init -)"
fi

# added by travis gem
[ -f /Users/jordan/.travis/travis.sh ] && source /Users/jordan/.travis/travis.sh
