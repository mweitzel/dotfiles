alias g=git
export CLICOLOR=1
alias grep='grep --color=auto'
alias fire=firetower

# https://github.com/postmodern/chruby
# define functions chruby and chruby_use
source /usr/local/share/chruby/chruby.sh

# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
# git autocomplete
source ~/.gitcompletion.bash
# https://askubuntu.com/questions/62095/how-to-alias-git-to-g-so-that-bash-completion-rules-are-preserved
# link autocomplete to g -> git alias
complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null || complete -o default -o nospace -F _git g

function local_gems() {
  export GEM_PATH=.gems
} ; local_gems

export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:~/bin"

# https://github.com/junegunn/fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

PS1='\W \u-$ '
