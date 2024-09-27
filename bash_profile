alias addpath='echo "export PATH=\$PATH:$1" >> ~/.bash_'


history -a
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
export HISTSIZE=5000
export HISTFILESIZE=5000
history -a

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"

PS1="$RED\$(date +%H:%M) \w$YELLOW (\$(parse_git_branch))$GREEN\$ "

alias gg='git commit -am 'gg''
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin'

alias st='git status'
alias ..='cd ..'
alias emuproxy='emulator @froyo -http-proxy http://127.0.0.1:8888 &'
alias suremerge='/Applications/guiffy102/suremerge.command'
alias g='git'
alias ontop='git commit -a --amend -C HEAD'
alias base='git fetch origin && git rebase origin/master'
alias ibase='git fetch origin && git rebase -i origin/master'
alias req='git push origin :`parse_git_branch`; git push origin HEAD && ./scripts/pr_link'
#old alias put='git push origin HEAD:master && git push origin :`parse_git_branch`'
alias put='git push origin HEAD:master && git push origin:`parse_git_branch`'
alias astop='adb shell am force-stop com.airbnb.android'
alias solve='git add --all && git rebase --continue'
alias mkbranch='~/mbr.sh'
alias aircat='pidcat com.airbnb.android'
alias recent='for k in `git branch | perl -pe s/^..//`; do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | head -n 1`\\t$k; done | sort'
alias nukemodules='git submodule foreach "git reset --hard && git clean -f"'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export ANDROID_HOME=~/android-sdks
source ~/.stemcellrc
source ~/.git-completion.sh
alias cherry='git cherry-pick'
alias g='git'
alias add='~/add.sh'
alias rmapk='rm ~/Downloads/airbnb*'
alias bashprof='subl ~/.bash_profile'
alias dlinst='adb install ~/Downloads/airbnb.apk'
alias fixvb='sudo /Library/StartupItems/VirtualBox/VirtualBox restart'
alias phab='git stash save "phabWIP"; git push origin HEAD && arc diff --nolint --excuse "" --nounit --reviewers "alex_davis"; git stash apply stash^{/phabWIP}\'
