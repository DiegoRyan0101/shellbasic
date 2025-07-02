#!/bin/bash
#Extrai campos ou trechos de uma linha. Possui um formato bem flexível de especificação de campos e caracteres.
#Opções
#-d | Delimiter |Escolhe o delimitador
#-f | Field | Mostra estes campos (veja tabela seguinte.)
#-c | Chars | Mostra estes caracteres (veja tabela seguinet.)
##
#-f / -c
#2,5     |2 5        |O segundo e o quinto.
#2-5     |2 3 4 5    |Do segundo ao quinto.
#2-      |2 3 4 5 ...|Do segundo em diante.
#-5      |1 2 3 4 5  |Até o quinto.
#2,5-    |2 5 6 7 ...|O segundo e do quinto em diante.
#2,3,5-8 |2 3 5 6 7 8|O segundo, o terceiro e do quinto ao oitavo.
#

#ex;
echo 'um:dois:três:quatro:cinco' | cut -d : -f 2,3,4
echo
echo 'um:dois:três:quatro:cinco' | cut -d : -f 2-4
echo
echo 'um:dois:três:quatro:cinco' | cut -d : -f 2-
echo
echo 'um:dois:três:quatro:cinco' | cut -c 1-10
echo
echo 'um:dois:três:quatro:cinco' | cut -c 4-9
echo
#DIcas;
#Útil para extrair campos de arquivos como o /etc/passswd e o /etc/fstab
cat /etc/fstab | tr -s ' ' |cut -d ' ' -f 2
echo
#Combine o cut com o rev para obter os útimos caracteres ou campos
echo 'um:dois:trÊs:quatro:cinco' | rev | cut -d : -f 1 | rev



