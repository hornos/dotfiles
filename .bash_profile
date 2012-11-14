
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
source "$rvm_path/contrib/ps1_functions"
PS1_PREFIX=" (\$?)"
ps1_set

source $HOME/shf3/bin/shfrc
source $HOME/shf3.vre/bin/shfrc
shf3/alias yes
shf3/screen yes
shf3/mc/color yes
shf3/ls/color yes

LC_CTYPE=en_US.UTF-8

alias passkey="passmgr -f shf3/sql/acc.sqlite -t acc -a acc"

PATH=$PATH:/usr/local/sbin

source /usr/local/etc/profile.d/modules.sh

module purge
module use ${HOME}/site/eszr/mod/common
module load eszr/local
module load eszr/env/local
module load eszr/sys/local/osx
module use ${HOME}/site/eszr/mod/local
module use ${HOME}/site/eszr/mod/webdev

alias findit=mdfind

source $HOME/shf3.coding.smashingmagazine.com/2012/10/29/powerful-command-line-tools-developers/bin/shfrc
source $HOME/shf3.coding.smashingmagazine.com/2012/10/29/powerful-command-line-tools-developers/bin/alias
