# Path to your oh-my-zsh installation.
#export ZSH=/Users/sseletskyy/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="pygmalion"
# ZSH_THEME="geoffgarside"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git colored-man colorize github jira vagrant virtualenv brew osx zsh-syntax-highlighting ruby)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/homebrew/bin:$PATH"
#export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
# export MANPATH="/usr/local/man:$MANPATH"

#source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
 export LANG=en_US.UTF-8
 export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
  export PATH="$HOME/.rbenv/bin:$PATH"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshconfig="subl ~/.zshrc"
alias envconfig="subl ~/Projects/config/env.sh"
alias vssh="vagrant ssh"
alias cd..="cd .."
alias ..="cd .."
alias ...=" cd ../.."
alias adbscrn="adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g'"
alias tree1="tree -h -L 1"
alias tree2="tree -h -L 2"
alias bss='browser-sync start --server --directory --files "*.*"'
alias bssc='browser-sync start --config bs-config.js'
alias vpncon="osascript -e 'tell application \"Viscosity\" to connect \"client\"' " 
alias vpndis="osascript -e 'tell application \"Viscosity\" to disconnect \"client\"' "
alias zs="zeus --log ZEUS.LOG start"
alias zr="zeus rspec spec"
alias ws='/Applications/WebStorm.app/Contents/MacOS/webstorm'

# eval "$(rbenv init -)"

# PROMPT='╭─[%*] %{$fg[cyan]%}%n%{$reset_color%}:%{$fg[green]%}%c%{$reset_color%}$(git_prompt_info) 
# ╰─%(!.#.$) '

# ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}git:("
# ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

#source ~/.bash_profile

#export CLIENT_TOOLS_ROOT=$HOME/android_sdk_ndk
#export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/24.3.3
#export ANDROID_HOME=$ANDROID_SDK_ROOT
#export ANDROID_NDK_ROOT=$OME/android_sdk_ndk/ndk # Tell the makefiles where it can find the cross-compilation tools.
# Update your path so you can call adb, android and other binaries in the SDK.
#export PATH=$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_NDK_ROOT
#export FLX_TARGET=Android # This tells the Makefiles to build Android - it's the only target we use these days.
 
#export SECURITY_CORE_PATH=$HOME/Projects/security # Tell the makefiles where it can find the security project in order to build the last version of the library.
export TERM="xterm-256color"

#source ~/dotfiles/ssh-find-agent.sh
#set_ssh_agent_socket

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

source ~/dotfiles/key-bindings.zsh

export PATH="/usr/local/sbin:$PATH"
