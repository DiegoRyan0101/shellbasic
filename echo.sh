#!/bin/bash

#Mostra um texto. útil para ecoar mensagens na tela.
#Opções:
#-n |Newline|Não quebra a linha no final.
#-e |Escape |Interpreta os escapes especiais(ver tabela seguinte.)
##
#Escape;
#\a |Alert|alerta(bipe).
#\b |Backspace|Caractere Backspace.
#\c |EOS|Termina a string.
#\e |Escape|Caractere Esc.
#\f |Form feed|Alimentação.
#\n |Newline|Linha nova.
#\r |Return |Retorno de carro.
#\t |Tab|Tabulação horizontal.
#\v |Vtab|Tabulação vertical.
#\\ |Backslash|Barra invertida \ literal.
#\nn |Octal|Caractere cujo octal é nnn.
#\xnn |Hexa|Caractere cujo hexadecimal é nn.

#EX;
echo -e '0\t1\t2\t3\t4\t5\t6\t7'
echo
echo -e 'Bip!\a Bip!\a Bip!\a'
echo
echo -e '\x65\x63\x68\x6F\x21'

#DIcas;
#Com um pouco de criatividade, usando os escapes \b e \r pode-se fazer pequenas animações no console, como uma barra de progresso que mostra a porcentagem:
echo
echo -n '[33%]';sleep 1; echo -ne '\r[66' ; sleep 1 ; echo -e '\b\b\b100'[100%]
echo

#Ou a famosa hélice ASCII;
while :; do for a in / - \\ \|; do echo -ne "\b$a"; done; done
