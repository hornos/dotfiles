
test -z "$PROFILEREAD" && . /etc/profile || true

### shell framework
source $HOME/shf3/bin/shfrc
shf3/ps1 SKYNET[\\h]
shf3/alias yes
shf3/screen yes
shf3/mc/color yes
### modules for screen
if shf3/is/screen ; then
  source "/etc/profile.d/modules.sh"
fi
source $HOME/shf3/bin/complete

### python
# source $HOME/pypak/bin/pypakrc
source $HOME/pyf3/bin/pyfrc

### skynet
source /site/eszr/env/wrcp/skynet
module use /site/eszr/mod/common
module load eszr/site
module load eszr/sys/wrcp/skynet
module load eszr/sys/wrcp/skynet.mpt
module use /site/eszr/mod/site
module load sgi/2011
module load globus/5.0.4
module load intel/2011sp1u2

PATH=$PATH:$HOME/sxda

source $HOME/shf3.vasp/bin/shfrc

source $HOME/shf3/bin/omprc

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source "$rvm_path/contrib/ps1_functions"
PS1_PREFIX="SKYNET (\$?)"
ps1_set
