#!/bin/bash

# Exemplo de Debug categorizado em três níveis

DEBUG=${1:-0}                     # Passe o nível pelo $1

Debug(){
	[ $1 -le $DEBUG ] && echo "--- DEBUG $*"
}

Debug 1 "Início do Programa"

i=0
max=5
echo "Contando até 5"

Debug 2 "Estou entrando no WHILE"

while [ $i -ne $max ]; do

	Debug 3 "Valor de \$i antes de incrementar: $i"
	let i=$i+1
	Debug 3 "Valor de \$i depois de incrementar: $i"

	echo "$i..."
done

Debug 2 "Saindo do WHILE"

echo "Acabooooou!!!"

Debug 1 "Fim do Programa"



########### Debug mais parruda ############

Debug_parruda(){
	
	[ $1 -le $DEBUG ] || return
	local prefixo

	case "$1" in
		1) prefixo="-- ";;
		2) prefixo="---- ";;
		3) prefixo="------ ";;
		*) echo "Mensagem não categorizado: $*"; return;;

	esac
	shift

	echo $prefixo$*
}







