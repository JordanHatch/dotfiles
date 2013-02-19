source ~/.aliases

if [ -f /usr/share/git-core/git-prompt.sh ]; then
  source /usr/share/git-core/git-prompt.sh
elif [ -f /etc/bash_completion.d/git ]; then
  source /etc/bash_completion.d/git
elif [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
  source /usr/local/etc/bash_completion.d/git-prompt.sh
fi

if [ -f /opt/boxen/env.sh ]; then
  source /opt/boxen/env.sh
fi

if type __git_ps1 &>/dev/null; then
  export PS1='\h:\W$(__git_ps1 " (%s)")\$ '
else
  export PS1='\h:\W\$ '
fi

export govuk_dev_dist='lucid'

export EDITOR='vim'
export PATH="~/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:/opt/boxen/homebrew/share/python:/usr/local/share/python:/usr/local/heroku/bin:$PATH"
