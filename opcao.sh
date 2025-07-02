#!/bin/bash
#cut -d : -f 1,5 /etc/passwd | tr : \\t
#########################
#código atual
case "$1" in
	-s | --sort)
	    ordenar=1
 	;;
	-r | --reverse)
	   inverter=1
	;;
	-u | --uppercase)
	   maiusculas=1
	;;
	..
esac
#
#Código compacto
case "$1" in
	#OPÇÕES QUE LIGAM/DESLIGAM CHAVES
	-s  | --sort   ) ordenar=1 ;;
	-r  | --uppercase ) maiusculas=1 ;;
	-u  | --reverse )inverte=1
#############################
############################
##############################
#Orena a listagem se necessário.
if test "$oredenar" =1
then
	lista=$(echo "$lista" | sort)
fi

#Inverte a listagem
fi test "$inverter" =1
then
	lista=$(echo "$lista" | tac)
fi

#Converte para maiúsculas
if test "$maiusculas" =1
then
	lista=$(echo "$lista" | tr a-z A-Z)
fi
#Código compacto
test "$ordenar" = 1 && lista=$(echo "$lista" | sort)

test "$inverter" = 1 && lista=$(echo "$lista" | tac)

test "maiusculas" = 1 && lista=$(echo "$lista" | tr a-z A-Z)
