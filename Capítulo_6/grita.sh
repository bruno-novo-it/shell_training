#!/bin/bash

#grita.sh

# Mostra uma palavra ($TXT) em maiúsculas e com exclamações
# Exemplo: foo -> !!!!!FOO!!!!!

DEBUG=1                  # Depuração: 0 Desliga, 1 Liga

# Função de depuração
Debug(){
	[ "$DEBUG" = 1 ] && echo -e "\033[33;1m$*\033[m"
}

TXT="gritaria"

TXT="     $TXT     "       # Adiciona 5 espaços ao redor
# A palavra gritaria vai ficar com 5 espaços no começo e no final

Debug "TXT com espaços      : [$TXT]"

TXT=$(echo "$TXT" | tr ' ' '!') # Troca os espaços por exclamações
# CUIDADO com o espaço entre as '', tem que ficar assim ' ' para substituir o espaço pela esclamação

Debug "TXT com exclamações: [$TXT]"

TXT=$(echo "$TXT" | tr a-z A-Z) # Deixa o texto em maiúsculas
# Aqui vai trocar todo o texto de minúscula para maiúscula

echo "$TXT"										# Mostra a mensagem


