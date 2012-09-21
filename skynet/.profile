# Sample .profile for SuSE Linux
# rewritten by Christian Steinruecken <cstein@suse.de>
#
# This file is read each time a login shell is started.
# All other interactive shells will only read .bashrc; this is particularly
# important for language settings, see below.

test -z "$PROFILEREAD" && . /etc/profile || true

# Most applications support several languages for their output.
# To make use of this feature, simply uncomment one of the lines below or
# add your own one (see /usr/share/locale/locale.alias for more codes)
# This overwrites the system default set in /etc/sysconfig/language
# in the variable RC_LANG.
#
#export LANG=de_DE.UTF-8	# uncomment this line for German output
#export LANG=fr_FR.UTF-8	# uncomment this line for French output
#export LANG=es_ES.UTF-8	# uncomment this line for Spanish output


# Some people don't like fortune. If you uncomment the following lines,
# you will have a fortune each time you log in ;-)

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
