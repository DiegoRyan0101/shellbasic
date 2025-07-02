#!/bin/bash

#Editor de textos não interativo e programável. Executa uma série de comandos de edição em um texto. Seu uso clássico é trocar uma string por outra, assim; s/isso/aquilo/. Esse comando significa; troque "isso" por "aquilo"
#opções|
# -n |Not print| Só mostra a linha caso usado o comando p.
# -e |Expression| Especifica os comandos de edição.
# -f |File |Lê os comandos de edição de um arquivo.
##
#Comando|
# s/// |Substitute|Troca um texto por outro.
# p |Print|Mostra a linha na saída.
# l |LIst |Mostra a linha na saída, com \t,\a,...
# d |Delete|Apaga a linha.
# q |Quit |Sai do sed.
# r |Read|Lê o conteúdo de um arquivo.
# N |Nest line|Junta a próxima linha com a atual.
###
#Endereço|        abrange
# 1            |A primeira linha.
# 1,5          |da primeira linha até a quinta.
# 5,$          |da quinta linha até a última.
# /sed/        |A(s) linha(s) que contém a palavra  "sed"
# 5,/sed/      |da quinta linha até a linha que contém "sed"
# /sed/,/grep/ |da linha que contém "sed" até a que contém "grep"
# 1,5!         |todas as linhas, exceto da primeira a quinta.
# /sed/!       |A(s) linha(s) que não contém a palavra "sed"
####
#s/// |exemplo | descrição
# g  |s/a/b/g  |Modificador  Global, para trocar todas as ocorrências.
# p  |s/a/b/gp |Modificador Print. para mostrar o texto substituído.
# &  |s/./&/   |Expande para todo o trecho casado na primeira parte.
# \1 |s/\(.\)/\1/ |Expande para o conteúdo do primeiro grupo marcado com \(...\) 


#ex;
cat fmt.txt | sed '1,3 d'
echo
cat fmt.txt | sed '/o$/ d'
echo
cat fmt.txt | sed '/dois/ q'
echo
cat um dois três quatro cinco | sed 's/ //g'
echo
cat fmt.txt | sed 's/tr/_TR_/ ; s/^/- /'
