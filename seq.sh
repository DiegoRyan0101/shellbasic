#!/bin/bash
#Mostra uma sequência numérica na tela, um número por linha. A contagem pode ser crescente ou decrescente.
#Opção;
# -s | Separator|Define o separador (o padrão é \n).
# -f | Format|Define o formato do número (o padrão é %g).

seq 4  #Conte até 4
echo
seq 2 5 #Conte de 2 a 5
echo
seq 0 5 20 #Conte de zero a 20, andando de 5 em 5
echo
seq 4 -1 0 #Conte de 4 até zero, com o passo de -1
echo
seq 4 -2 -4 #Conte de 4 até -4, com o passo de -2
echo
seq -s , 20
echo
seq -s '...' -f '%04g' 7


#Dicas;
#o seq é útil para usar junto com o for;
# for i in $(seq 10); do echo Contando: $i; done
