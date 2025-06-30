#!/bin/bash
#cat mostra conteúdo de um ou mias arquivos.
#Opções
#-n  |Number |Numera as linhas
#-s  |Squeeze|Remove as linhas em branco excedentes.

echo -e "um\ndois\n\n\n\ntrês"
echo
echo -e "um\ndois\n\n\n\ntrês" | cat -n -
echo
echo -e "um\ndois\n\n\n\ntrês" | cat -n -s -
