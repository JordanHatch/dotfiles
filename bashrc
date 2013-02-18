source ~/.aliases

if [ -f /usr/share/git-core/git-prompt.sh ]; then
  source /usr/share/git-core/git-prompt.sh
elif [ -f /etc/bash_completion.d/git ]; then
  source /etc/bash_completion.d/git
elif [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
  source /usr/local/etc/bash_completion.d/git-prompt.sh
fi

export PS1='\h:\W$(__git_ps1 " (%s)")\$ '
export govuk_dev_dist='lucid'

export EDITOR='vim'
export PATH="~/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:/usr/local/share/python:/usr/local/heroku/bin:$PATH"
