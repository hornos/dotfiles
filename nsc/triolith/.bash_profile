# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

source $HOME/shf3/bin/shfrc
shf3/ps1 TRIOLITH[\\h]
shf3/alias yes
shf3/screen yes
shf3/mc/color yes

module use $HOME/local/modulefiles

alias mla="module avail"
alias mls="module list"
alias mld="module load"

module load impi/4.0.3.008
module load sys/triolith

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source "$rvm_path/contrib/ps1_functions"
PS1_PREFIX="TRIOLITH (\$?)"
ps1_set
function status() {
  sjstat -c
  sinfo
}
