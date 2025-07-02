#!/bin/bash

#a chave é uma variável de apenas dois estados; liga ou desligada, 0 ou 1.

#Como usar chaves
#####
#definindo uma chve;
#USAR_CORES=1 #Chave para usar cores (0 desliga, 1 liga)

###########33
#
#
chave=0
test $chave -eq 1 && echo LIGADA
echo
chave=1
test $chave -eq 1 && echo LIGADA
echo
chave=abc
test $chave -eq 1 && echo LIGADA
echo
chave=
test $chave -eq 1 && echo LIGADA
echo
test "$chave" -eq 1 && echo LIGADA
