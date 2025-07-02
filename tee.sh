#!/bin/bash

#Salva o fluxo de dados de um pipe para um arquivo, sem interrompê-lo.

#Opção;
#-a |Append|Anexa ao final do arquivo( o padrão é sobrescrever).

#ex;
echo "um texto qualquer" | tee tee.txt
echo
cat tee.txt
echo
echo "um outro texto" | tee -a tee.txt
echo
cat tee.txt
