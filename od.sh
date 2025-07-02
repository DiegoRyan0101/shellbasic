#!/bin/bash

#O od é o Octal Dump, que serve para mostrar o código de cada caractere de um arquivo ou texto.
#Além de octal, também mostra os códigos em hexadecimal e ASCII.

#Opções:
#-a |Name |Mostra os nomes dos caracteres.
#-c |ASCII|Mostra os caracteres ASCII.
#-o |Octal|Mostra os códigos em hexadicimal.
#-x |Hexa |

#ex;

echo od, que legal | od -h
echo
echo od, que legal | od -c
echo
echo -ne '\a\b\f\n\r\t\v' | od -ac

