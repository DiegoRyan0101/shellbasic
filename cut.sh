#!/bin/bash
#cut extrai campos ou trechos de uma linha. Possui um formato bem felxível de especificação de campos e caracteres.
#opções
#-d |Delimiter|Escolhe o delimitador
#-f |Field|Mostra estes campos
#-c |Chars|Mostra estes caracteres
#
#-f / -c
#2,5 |2 5|O segundo e o quinto.
#2-5 |2 3 4 5|Do segundo ao quinto.
#2- |2 3 4 5...|Do segundo em diante.
#-5 |1 2 3 4 5|Até o quinto.
#2,5- |2 5 6 7...|O segundo e do quinto em diante.
#2,3,5-8 |2 3 5 6 7 8|O segundo, o terceiro e do quinto ao oitavo.
#
#

echo 'um:dois:três:quatro:cinco' | cut -d : -f 2,3,4
echo
echo 'um:dois:três:quatro:cinco' | cut -d : -f 2-4
echo
echo 'um:dois:três:quatro:cinco' | cut -d : -f 2-
echo
echo 'um:dois:três:quatro:cinco' | cut -c 1-10
echo
echo 'um:dois:três:quatro:cinco' | cut -c 4-9
