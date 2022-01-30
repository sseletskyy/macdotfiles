# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.zsh.inc' ]; then . '~/google-cloud-sdk/completion.zsh.inc'; fi


### zsh plugins ###
# zsh-autosuggestions
# make sure to run the command before use it:
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
# it should be done in ansible/tasks/oh-my-zsh.yml
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

### oh-my-zsh ###
ZSH_THEME="bureau"

# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(fzf git colorize macos jsontools)

source ~/.oh-my-zsh/oh-my-zsh.sh

listening() {
      lsof -n -iTCP:$1 | grep LISTEN
    }
,pkill() {
      kill -9 $(listening $1 | awk '{print $2}')
    }

alias ,wtf='rm -rf node_modules && npm i'
alias ,ybw='rm -rf node_modules/.cache && yarn build:watch'
alias ,yp='yarn prettier:fix && git s'

alias cd..="cd .."
alias ..="cd .."
alias ...=" cd ../.."
alias tree1="tree -h -L 1"
alias tree2="tree -h -L 2"

source ~/dotfiles/key-bindings.zsh
