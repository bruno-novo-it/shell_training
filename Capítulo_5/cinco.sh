#!/bin/bash

# Conta até cinco
set -xv          #Liga debug
trap read DEBUG  #Liga passo a passo

echo $((0+1))
echo $((0+2))

trap read DEBUG  #Desliga passo a passo

echo $((0+3))
echo $((0+4))
echo $((0+5))

