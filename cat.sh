#!/bin/bash

#Mostra o conteúdo de um ou mias arquivos.

#Opções:
#-n | Number |Numera as linhas
#-s | Squeeze |Remove as linhas em branco excedentes.


#EX;
echo -e "um\ndois\n\n\n\ntrês"
echo
echo -e "um\ndois\n\n\n\ntrês" | cat -n -
echo
echo -e "um\ndois\n\n\n\ntrês" | cat -n -s -

#Dicas:

#Útil para emendar dois arquivos;
#cat arquivo1.txt  arquivo2.txt > arquivao.txt
#
#Geralmente cat arquivo | comando pode ser escrito diretamente como comando arquivo OU comando < aruqivo.
#Em algumas versões do cat, as opções -n e -s não estão disponíveis.


