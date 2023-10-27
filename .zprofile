export PATH=~/.bin:~/.local/bin:$PATH
export EDITOR=nano
export GOPATH=~/.go
export MBOX=~/.mbox

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
