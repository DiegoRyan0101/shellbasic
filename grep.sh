#!/bin/bash
#procura em arquivos ou textos por linhas que contêm determinado padrão de pesquisa. O padrão pode ser uma string ou uma expressão regular.
#Opções;
#-i|Ignore case|Igora a diferença entre maiúsculas e minúscuals
#-v|Invert|Mostra as linhas que não casam com o padrão.
#-r|Recursive|Varre subdiretórios também.
#-q|Quiet|Não mostra as linhas que encontrar(usar com o test).
#-s|Silent|Não mostra os erros(usar com o test).
#-n|Number|Mostra também o número de linha.
#-c|Count|Conta o número de linhas encontradas.
#-l|Filename|Mostra apenas o nome o arquivo que casou.
#-w|Word|O padrão é uma linha inteira, e não parte dela.
#-x|Full line|O padrão é uma linha inteira, e não parte dela.
#-A|After|Mostre N linhas de contexto depois do padrão.
#-B|Before|Mostre N linhas de contexto antes do padrão.
#-C|Context|Mostre N linhas de contexto antes e depois  do padrão.
###
#as identidades do grep
#grep |Procura por uma expressão regular básica.
#egrep ou grep -E|Procura por uma expressão regular estendida.
#fgrep ou grep -F|Procura por uma string.
###
#Metacaracteres
#Expressão regular básica|^ $ . * [ \? \+ \| \( \) \{ \}
#Expressão regular estendida|^ $ . * [ ? + | () {} 

#ex;
seq 10 | grep -A1 -B3 "7"
echo
cat grep.txt
echo
cat grep.txt | fgrep grep
echo
cat grep.txt | fgrep -w grep
echo
cat grep.txt | egrep -i '(grep.+){3}'
echo
cat grep.txt | grep -i '\(grep.\+\)\{3\}'

#Dicas;
#Sempre que não for pesquisar uma expressão regular, use o fgrep, pois ele é mais rápido.
#A opção -l é útil para corrigir um mesmo erro em vários arquivos; vi $(grep -l 'emossão' *.txt)
#Note que o -c conta as linhas, e não as palavras: echo 'grep, grep, grep, grep' | grep -c grep
#As opções -q e -s são usadas em testes e condicionais; if grep -qs 'grep' grep.txt ; then echo achei ; fi achei
#grep -qs 'grep' grep.txt && echo achei achei
