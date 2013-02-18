source ~/.aliases

GIT_PROMPT=/usr/share/git-core/git-prompt.sh
GIT_COMPLETION=/etc/bash_completion.d/git
if [ -f $GIT_PROMPT ]; then
  source $GIT_PROMPT
elif [ -f $GIT_COMPLETION ]; then
  source $GIT_COMPLETION
fi

export PS1='\h:\W$(__git_ps1 " (%s)")\$ '
export govuk_dev_dist='lucid'

export EDITOR='vim'
export PATH="~/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:/usr/local/share/python:/usr/local/heroku/bin:$PATH"
