#
# Add bash_autocompletion for brew
#
if type brew &>/dev/null && [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
