#!/bin/bash

# Criando os diretórios
sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

# Criando os grupos
sudo groupadd administrativo
sudo groupadd vendas
sudo groupadd sec

# Criando os usuários
sudo useradd -m -s /bin/bash carlos
sudo useradd -m -s /bin/bash maria
sudo useradd -m -s /bin/bash joao
sudo useradd -m -s /bin/bash debora
sudo useradd -m -s /bin/bash sebastiana
sudo useradd -m -s /bin/bash roberto
sudo useradd -m -s /bin/bash josefina
sudo useradd -m -s /bin/bash amanda
sudo useradd -m -s /bin/bash rogerio

# Adicionando os usuários aos grupos correspondentes
sudo usermod -a -G administrativo carlos
sudo usermod -a -G administrativo maria
sudo usermod -a -G administrativo joao
sudo usermod -a -G vendas debora
sudo usermod -a -G vendas sebastiana
sudo usermod -a -G vendas roberto
sudo usermod -a -G sec josefina
sudo usermod -a -G sec amanda
sudo usermod -a -G sec rogerio

# Definindo as permissões dos diretórios
sudo chown root:root /publico /adm /ven /sec
sudo chmod 777 /publico
sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec

# Definindo as permissões dos grupos
sudo setfacl -R -m g:administrativo:rwx /adm
sudo setfacl -R -m g:vendas:rwx /ven
sudo setfacl -R -m g:sec:rwx /sec

# Restringindo as permissões dos usuários que não pertencem aos grupos correspondentes
sudo setfacl -R -m o:- /adm
sudo setfacl -R -m o:- /ven
sudo setfacl -R -m o:- /sec
