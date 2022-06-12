export PATH=$HOME/.local/bin:/usr/local/bin:$PATH
PROMPT='%B%F{red}%n%F{yellow}@%F{red}%m %F{black}%~  %b%f'
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=100000
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export EDITOR='vim'
alias ls="ls --color"
pokemon-colorscripts -r
