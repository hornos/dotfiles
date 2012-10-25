
test -z "$PROFILEREAD" && . /etc/profile || true

### shell framework 3
source $HOME/shf3/bin/shfrc
source $HOME/shf3.vasp/bin/shfrc
shf3/ps1 DEBRECEN[\\h]
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
module load eszr/sys/niif/debrecen
module load eszr/sys/niif/debrecen.mpt
module use ${HOME}/site/eszr/mod/local
module load sgi/2011

module load vasp/proj
# module load vasp/util
module load vasp/kernel

source $HOME/pyf3/bin/pyfrc

PATH=$PATH:$HOME/sxda

function status() {
  qstat -g c
}

