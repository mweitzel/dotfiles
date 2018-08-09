alias g=git
export CLICOLOR=1
alias grep='grep --color=auto'
alias fire=firetower

source /usr/local/opt/chruby/share/chruby/chruby.sh

function local_gems() {
  export GEM_PATH=.gems
} ; local_gems
