#!/bin/bash
# Versão 1: Mostra usuários e nomes separados por TAB
# Versão 2: Adicionado suporte à opção -h
# Versão 3: Adicionado suporte à opção -V e opções inválidas
# Versão 4: Arrumado bug quando não tem opções, basename no
#	nome do programa, -V extraindo direto dos cabeçalhos,
#	adicionadas opções --help e --version
# Versão 5: Adicionadas opções -s e --sort
# Versão 6: Adicionadas opções -r, --reverse, -u, --uppercase,
#	leitura de múltiplas opções (loop)
# Versão 7: Melhorias no código para que fique mais legível,
#	adicionadas opções -d e --delimiter
ordenar=0 #a saída deverá ser ordenada?
inverter=0 #a saída deverá ser invertida?
maiusculas=0 #a saída deverá ser em maiúculas?
delim='\t' #caractere usado como delimitador de saída
MENSAGEM_USO="
Uso: $(basename "$0") [OPÇÕES]
OPÇÕES:
-d, --delimiter C usa o caractere C como delimitador
-r, --reverse Invrete a listagem
-s, --sort  Ordena a listagem alfabeticamente
-u, --uppercase Mostra a listagem em MAIÚSCULAS
-h, --help Mostra esta tela de ajuda e sai
-V, --version Mostra a versão do programa e sai"

#Tratamento das opções de linha de comando
while test -n "$1"
do	case "$1" in
	    	#Opções que ligam/desliga chaves
		-s | --sort ) ordenar=1 ;;
		-r | --reverse ) inverter=1 ;;
		-u | --uppercase) maiusculas=1 ;;
		
		-d | --delimiter)
			shift
			delim="$1"
			
			if test -z "$delim"
			then
				echo "Faltou o argumento para a -d"
				exit 1
			fi
		 ;;
		 -h | --help)
			echo "$MENSAGEM_USO"
			exit 0
		 ;;
		-V | --version)
			echo "$MENSAGEM_USO"
			#extrai a versão diretamente dos cabeçalhos do programa
			grep '^# Versão ' "$0" | tail -1 | cut -d : -f 1 | tr -d \#
			exit
		;;
		*)
			echo OPção inválida: $1
			exit 1
		;;
	esac

	#Opção $1 já processada, a fila deve andar
	shift
done

#extrai a listagem
lista=$(cut -d : -f 1,5 /etc/passwd)

#Ordena, inverte ou converte para maiúsculas
test "$ordenar" = 1 && lista=$(echo "$lista" | sort)
test "$inverter" = 1 && lista=$(echo "$lista" | tac)
test "$maiusculas" = 1 && lista=$(echo "$lista" | tr a-z A-Z)

#Mostra o resultado para o usuário
echo "$lista" | tr : "$delim"
