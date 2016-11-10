#!/bin/bash

# Muito bom para chamar a atenção dos colegas de trabalho

echo -ne "\033[11;900]"                     # Cada bipe dura quase um segundo

while :                                     # Loop eterno
do
	echo -ne "\033[10;500]\a" ; sleep 1       # Tom Alto (Agudo)
	echo -ne "\033[10;400]\a" ; sleep 1       # Tom Baixo (Grave)
done




