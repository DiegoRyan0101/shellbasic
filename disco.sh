#!/bin/bash
DISCO=$(lsblk)
LISTA=$(ls -lha)

echo "Discos:$DISCO"
echo
echo "Diretórios:$LISTA"

