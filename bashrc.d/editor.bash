export EDITOR='vim'

if [[ "$OSTYPE" == "darwin"* ]]; then
  export EDITOR='mvim -f --nomru -c "au VimLeave * !open -a iTerm"'
fi
