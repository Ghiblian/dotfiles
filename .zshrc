autoload -U compinit promptinit colors
compinit
promptinit
colors

export PS1="[%{$fg_bold[green]%}%m%{$reset_color%}:%{$fg_bold[blue]%}%~%{$reset_color%}] %{$reset_color%}"

# Environment
export CLICOLOR="YES"

# Path
export PATH="~/bin:$HOME/bin:$PATH"
export PYTHONPATH="$HOME/bin"

# Commands
alias ls="ls -F"
alias grep="grep --color"
alias dev3="ssh -Y -i ~/.ssh/id_rsa davidli@dev3.dev.meebo.com"

source /etc/profile

#OMZSH
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="mrtazz"
plugins=(git)
source $ZSH/oh-my-zsh.sh

