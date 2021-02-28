SUBLIME_PATH=/Applications/Sublime\ Text.app/Contents/SharedSupport/bin

if [[ -d $SUBLIME_PATH ]]; then
  export PATH="$SUBLIME_PATH:$PATH"
fi
