#!/bin/bash
#Encontra arquivos procurando pelo nome, data, tamanho e outras propriedades.
#Opções;
#-name|Especifica o nome do arquivo(ou *parte* dele).
#-iname|Ignora a diferença entre maiúsculas e minúsculas no nome.
#-type|Especifica o tipo do arquivo(f-arquivo,d-diretório, 1-link).
#-mtime|Mostra os arquivos modificados há N dias.
#-size|Mostra os arquivos que possuem o tamanho especificado.
#-user|Mostra os arquivos de um usuário especifíco.
#-ls|Mostra os arquivos no mesmo formato do comando ls.
#-printf|Formatação avaçada para mostra os nomes dos arquivos.
#-exec|Executa um comando com os arquivos encontrados.
#-ok|Executa um comando com os arquivos encontrados, com confirmação.
#-and, -or|E, OU lógico para as condições.
#-not|Inverte a lógica da expressão.

#Detalhes das opções -exec e -ok
#A string {} representa o nome do arquivo encontrado.
#O comando deve ser passado sem aspas.
#O comando deve ser terminado por um ponto e vírgula escapado \;
#Tem que ter um espaço antes do ponto e vírgula escapado
#Mover os arquivos .txt para .txt.old: find . -name '*.txt' -exec mv {} {}.old\;
#
#

#ex;
find /etc -iname 'x*'
echo
find /etc -iname 'x*' -maxdepth 1
echo
find /etc -type d -name 'cron*' -and -not -name 'cron.d*'

#DicaS;
#PARA procurar mais de um tipo de arquivo;
#find . -name '*.txt' -or -name '*.html'

#Para apagar todos os arquivos .mp3 de um diretório, incluindo subdiretórios;
#find. -iname '*.mp3' -exec rm -f {} \;

#Para encontrar todos os links simbólicos do diretório atual e mostrar para onde eles apontam;
#find . -type l -ls | cut -d / -f 2-

