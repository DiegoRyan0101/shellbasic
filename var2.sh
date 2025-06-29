#!/bin/bash
#Você pode declarar variáveis com valores, tipo comandos sendo declarados(automatização) ex abaixo
HOJE=$(date)
echo "hoje é: $HOJE"
echo
#O comando unset ele exclui o valor de uma variável
unset HOJE
echo $HOJE
