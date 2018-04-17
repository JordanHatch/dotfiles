if [[ -f '/usr/local/etc/bash_completion.d/git-completion.bash' ]]; then
  source '/usr/local/etc/bash_completion.d/git-completion.bash'
fi

if [[ -f '/usr/local/etc/bash_completion.d/git-prompt.sh' ]]; then
  source '/usr/local/etc/bash_completion.d/git-prompt.sh'
fi

if type __git_ps1 &>/dev/null; then
  export PS1='\h:\W$(__git_ps1 " (%s)")\$ '
else
  export PS1='\h:\W\$ '
fi
