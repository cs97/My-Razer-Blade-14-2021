# /etc/skel/.bashrc
#
PS1='\[\e[0;38;5;226m\][\[\e[0;38;5;196m\]\u\[\e[0m\]@\[\e[0;38;5;46m\]\h \[\e[0;95m\]\w\[\e[0;38;5;226m\]]\[\e[0m\]\$ \[\e[0m\]'
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
    [ -z ${XDG_RUNTIME_DIR} ] && {
		export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
        [-d ${XDG_RUNTIME_DIR} ] || {
            mkdir ${XDG_RUNTIME_DIR}
            chmod 0700 ${XDG_RUNTIME_DIR}
        }
    }
}