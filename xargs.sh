#!/bin/bash

#Gerenciador ded argumentos da linha de comando. Executa comandos passando os argumentos recebidos via STDIN. O comando padrão é o echo.

#Opções;
# -n |Number|Use N argumentos por linha de comando.
# -i |Replace|Troca a string {} pelo argumento da vez.

#Ex;
cat fmt.txt | xargs
echo
cat fmt.txt | xargs -n 2
echo
cat fmt.txt | xargs -i echo Contando: {}...
