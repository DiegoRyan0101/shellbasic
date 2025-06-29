#!/bin/bash
cat /etc/passwd | grep root | cut -c1-10

#O pipe é a barra em reta | 
# o pipe permite que você execute mais de um comando em um único comando se parando os com o pipe
