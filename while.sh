#!/bin/bash

#estrutura do while
#
#while COMANDO
#do
#	comandos
#done
#
#



while test -f /tmp/lock
do
	echo"Script travado..."
	sleep 1
done
