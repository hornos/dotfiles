# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

### shell framework
source $HOME/shf3/bin/shfrc
source $HOME/shf3.vasp/bin/shfrc
shf3/ps1 SZEGED[\\h]
shf3/mc/color yes
shf3/screen yes
shf3/alias yes
# screen workaround
if shf3/is/screen ; then
  source "/etc/profile.d/modules.sh"
fi
# tab complete
source $HOME/shf3/bin/complete

### modules
module purge
module use ${HOME}/site/eszr/mod/common
module load eszr/local
module load eszr/env/local
module load eszr/sys/niif/szeged
module use ${HOME}/site/eszr/mod/local
module load intel/mpi/4.0.3.008

module load vasp/proj
# module load vasp/util
module load vasp/kernel

source $HOME/pyf3/bin/pyfrc

alias python="python2.6"
PATH=$PATH:$HOME/sxda

function status() {
  qstat -g c
}
