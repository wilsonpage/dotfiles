
# load bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias gti='git'
alias ll='ls -la'
alias myip="echo $(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}')"
alias prettyjson='python -m json.tool'

PS1='\w$(__git_ps1 " \[\033[32m\](%s)\[\033[m\]") \$ '

# load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
