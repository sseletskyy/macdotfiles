#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# BEGIN CW-CLI MANAGED BLOCK
if [ -f /Users/cw2930/projects/cw-cli/path.zsh.inc ] ; then source /Users/cw2930/projects/cw-cli/path.zsh.inc ; fi # cw-cli
# END CW-CLI MANAGED BLOCK
# The next line enables shell command completion for gcloud.
if [ -f '/Users/cw2930/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/cw2930/google-cloud-sdk/completion.zsh.inc'; fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

alias ,supercata='ruby -e "%w[catawiki buyer assets auth ab augeo accounts message_center fulfilment content_proxy datascience-api search lots marketing mailer finance payments customer_info seller-center images shipping feedback orders employee-identity].each{|app| system(%Q{cw kubectl run #{app}})}"'
alias ,cwg="cw kubectl get"
alias ,cwr="cw kubectl run"
alias ,cwd="cw kubectl delete deployment"
alias ,cwe="cw kubectl exec"
alias ,cwk="cw kubectl"
listening() {
      lsof -n -iTCP:$1 | grep LISTEN
    }
,pkill() {
      kill -9 $(listening $1 | awk '{print $2}')
    }
,stage() {
  local MS=$(pwd | awk -F'/' '{print $NF}' | cut -d'-' -f 2-)
  cw upgrade && cw setup kubectl && cw stage && ,supercata 
}
,tp() {
  local MS=$(pwd | awk -F'/' '{print $NF}' | cut -d'-' -f 2-)
  cw local tp $MS
}
,stp() {
  ,stage && ,tp
}

alias ,cwdelete='cw kubectl delete deployment --all'
alias ,cwdall='ruby -e "%w[buyer catawiki marketing assets auth ab accounts datascience-api search lots augeo exporters redis rafka nginx].each{|app| system(%Q{cw kubectl delete deployment #{app}})}"'

alias ,wtf='rm -rf node_modules && yarn && yarn build:watch'
alias ,cwesr='cw kubectl exec search "rake snapshots:restore[production]"'
alias ,ybw='rm -rf node_modules/.cache && yarn build:watch'
alias ,stagingldp='env APP_ENV=staging APP_STAGE=staging-ldp cw kubectl exec catawiki "./script/console"'
alias ,yp='yarn prettier:fix && git s'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias tilt=/usr/local/bin/tilt

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/mysql-client@5.7/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'; fi
