#!/bin/bash

#@
if/then/fi

if test $i -gt 10
then
	break
fi
#@
test $i -gt 10 && break
#@

