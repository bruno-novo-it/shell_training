#!/bin/bash

# Mostra todas as combinações de cores do console

for letra in 0 1 2 3 4 5 6 7; do                # LINHAS: cores das letras
	for brilho in '' ';1'; do                     # liga/desliga cor brilhante
		for fundo in 0 1 2 3 4 5 6 7; do            # COLUNAS: cores dos fundos
			seq="4$fundo;3$letra"                     # Compõe código de cores
			echo -e "\033[$seq${brilho}m\c]"          # Liga a cor
			echo -e " $seq${brilho:-  }\c"            # Mostra o código na tela
			echo -e "\033[m\c"
		done; echo
	done
done


