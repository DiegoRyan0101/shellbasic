#!/bin/bash

#estrutura do if no shell

#if COMANDO
#then
#	comandos
#else
#	comandos
#fi



#para saber se uma variável é maior ou menor do que 10. e mostrar uma mensagem na tela informando;
VARIAVEL=5
if test "$VARIAVEL" -gt 10
then
	echo "é maior que 10"
else
	echo "é menor que 10"
fi

#Há um atalho para o test, que é o colchetes

VARIAVEL=7
if [ "$VARIAVEL" -gt 10 ]
then
	echo "é maior que 10"
else
	echo "é menor que 10"
fi 
