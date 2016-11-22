#!/bin/bash

#seq --> Print numbers from FIRST to LAST, in steps of INCREMENT.

echo "Testando o comando seq"
for i in $(seq 1 5 100);
do
	echo "$i"
done

# Sequencia 1-100 de 5 em 5
