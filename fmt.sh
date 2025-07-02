#!/bin/bash
#Formatador simples de parágrafos. Adiciona ou remove quebras de linha e espaços para que o texto não ultrapasse o número máximo de colunas.
#Opções;
#-w|Width|Define o número máximo de colunas(o padrão é 75).
#-u|Uniform|Remove espaços excedentes.
#ex;
cat fmt.txt
echo
cat fmt.txt | fmt -w 35
echo
cat fmt.txt | fmt -w 35 -u



