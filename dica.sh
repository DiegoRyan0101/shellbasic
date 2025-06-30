#!/bin/bash
#para extrair campos de arquivos
#ex;

cat /etc/fstab | tr -s ' ' | cut -d ' ' -f 2
