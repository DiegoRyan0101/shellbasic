#!/bin/bash
#Ordena as linhas de um texto, alfabética ou numericamente
#Opções;
# -n |Numeric|Ordena numericamente (o padrão é alfabeticamente).
# -r |Reverse|Reverte a ordenação (de Z para A, de 9 para 0).
# -f |Ignore case|Ignora a diferença entre maiúsculas e minúsculas.
# -k |Key|Ordena pela coluna N (a primeira é 1).
# -t |Separator|Escolhe o separador para o -k ( o padrão é o TAB).
# -o |Output |Grava a saida no arquivo especificado.

#ex;
sort fmt.txt
echo
cat -n fmt.txt | sort -k 2
echo
echo -e "1\n10\n100\n2\n20\n200" | sort
echo
echo -e "1\n10\n100\n2\n20\n200" | sort -n

#Dicas;
#Usando a opção -o é possível ordenar um arquivo e gravar o resultado nele mesmo;
# sort arquivo.txt -o arquivo.txt
