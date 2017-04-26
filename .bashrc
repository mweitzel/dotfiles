alias g=git
alias ls='ls -G'
alias grep='grep --color=auto'
alias fire=firetower
alias firer='firetower -r'

source /usr/local/opt/chruby/share/chruby/chruby.sh

function local_gems() {
  export GEM_PATH=.gems
} ; local_gems
