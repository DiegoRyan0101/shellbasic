#letra  |Lembrete  |Tipos de arquivo(primeiro caractere)
-       |-         |Arquivo normal.
d       |Directory |Diretório.
l       |Link      |Link simbólico.
b       |Block     |Dispositivos de blocos(HD).
c       |Char      |Dispositivos de caracteres(modem serial).
s       |Socket    |socket mapeado em arquivo(comunicação de processo).
p       |Pipe      |FIFO ou Named Pipe(comunicação de processo).
########
####
#letra  |lembrete   |Permissões do arquivo(proximos 9 caracteres).
-       |-          |Permissão desativada.   
r       |Read       |Acesso de leitura.
w       |Write      |Acesso de escrita.
x       |eXecute    |Acesso de execução(ou acesso de adiretório).
X       |eXecute    |Acesso ao diretório somente.
s       |Set ID     |Usuário/grupo para execução(SUID,SGID),permissão 'x' desativada
S       |Set ID     |Usuário/grupo para execução(SUIF,SGID),permissão 'x' ativada.
t       |sTicky     |Usuários só apagam seus próprios arquivos, permissão 'x' ativada
T       |sTicky     |Usuários só apagam seus próprios arquivos, permissão 'x' desativada.
