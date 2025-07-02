#!/bin/bash

#mostra um texto usando vários formatadores especiais, todos os escapes usados pelo comando echo
#(como \t e \n) também são válidos no printf.

#Opções;
# %d |Decimal|Número decímal.
# %o |Octal |Número octal.
# %x |Hexa |Número hexadecimal(a-f).
# %f |Float |Número com ponto flutuante.
# %e |      |Número em notação cientifica(e+1).
# %E |      |Número em notação cientifica(E+1).
# %s |String|String.

printf '%o \n' 10
echo
printf '%x \n' 10
echo
printf '%05d \n' 10
echo
printf '%f \n' 10
echo
printf '%.3f \n' 10
echo
printf '%.3e \n' 10
echo
printf '(%-15s) \n' direita
echo
printf '(%-15s) \n' esquerda

