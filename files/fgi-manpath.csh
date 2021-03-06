#!/bin/tcsh
# Set the manpath explicitly, so MANPATH overwrites won't hide system man pages

if ! $?MANPATH then
 setenv MANPATH
endif
if (`where man` != "") then
    setenv MANPATH "${MANPATH}:"`man -w`
endif

