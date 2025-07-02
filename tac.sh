#!/bin/bash
#tac é o contrário de cat.
#O que o rev faz com caracteres, o tac faz com linhas.
#Ele mostra o texto ao contrário, da última para a primeira linha.

cat fmt.txt
echo
tac fmt.txt

#dicas;
#O tac é útil para se usar em conjunto com o sed, grep, awk ou outros processadores orientados á linha, quando se precisa procurar ou mostrar registros em ordem reversa.

