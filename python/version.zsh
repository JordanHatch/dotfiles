# If Python 3 is installed with Homebrew then
# prefer this over the system Python
#
if [[ -d '/usr/local/opt/python@3' ]]; then
  export PATH="/usr/local/opt/python@3/libexec/bin:$PATH"
fi
