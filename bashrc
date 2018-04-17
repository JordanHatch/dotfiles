source ~/.aliases

export EDITOR='vim'
export PATH="~/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:$HOME/.rbenv/bin:/usr/local/heroku/bin:$PATH"
export GOPATH="${HOME}/dev/go"

#
# source all of the scripts in ~/.bashrc.d
#
for f in $(ls ~/.bashrc.d/*.bash) ; do . $f; done
