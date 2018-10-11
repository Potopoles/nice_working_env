# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

test -s ~/.alias && . ~/.alias || true

#module load daint-gpu
#module load ncview/2.1.7-CrayGNU-17.08
#module load NCO/4.6.8-CrayGNU-17.08
#module load cray-python
#module load PyExtensions/3.5-CrayGNU-17.08
#module load netcdf-python/1.2.9-CrayGNU-17.08-python-3
#module load CDO/1.9.0-CrayGNU-17.08 

#module load python/3.6.2-gmvolf-17.02
#module load netcdf4-python/1.3.0-gmvolf-17.02-python-3.6.2

# MY ALIASES
alias daint="ssh -X daint"
alias scraint="cd /scratch/snx1600/heimc/"
alias scratch="cd /scratch/heimc/"
alias project="cd /project/pr04/heimc/"
#alias transfer="cd /home/heimc/store/transfer/"
alias que='squeue -u heimc'
alias vimrc='vi ~/.vimrc'
alias bashrc='vi ~/.bashrc'
#alias sout='vi sbatch.out'
#alias serr='vi sbatch.err'
#alias killswp='find . -type f -name "*.sw[klmnop]" -delete'
#alias batch='vi a_runPython.sbatch'
#alias run='sbatch a_runPython.sbatch'
#alias near_surface='vim /scratch/heimc/cosmo-pompa/cosmo/src/near_surface.f90'
alias la='ls -larth'
alias h='history | grep '
alias f='find . -iname '


sacct_fmt='jobid,jobname,timelimit,elapsed,partition,ncpus,nodelist,state'
alias        sa="sacct -X --format=$sacct_fmt -S $(date --iso -d yesterday)"


# owm path
export PATH="$PATH:/oprusers/owm/bin:/oprusers/owm/opr/bin"

# for grins, fxconvert, etc.
if [[ "$(uname -n)" =~ ^(escha|kesch).*$ ]]
then 
export PATH=$PATH:/oprusers/owm/bin:/users/heimc/bin
fi 

## added by Miniconda3 installer
#export PATH="/users/heimc/miniconda3/bin:$PATH"

[[ -s /users/heimc/.autojump/etc/profile.d/autojump.sh ]] && source /users/heimc/.autojump/etc/profile.d/autojump.sh

