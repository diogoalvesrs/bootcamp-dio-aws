#!/bin/bash

# atualiza o sistema
sudo apt-get update
sudo apt-get upgrade -y

# instala o Apache2 e o unzip
sudo apt-get install -y apache2 unzip

# faz o clone do repositório
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O /tmp/main.zip

# descompacta o arquivo clonado
sudo unzip /tmp/main.zip -d /tmp

# move a pasta descompactada para o diretório padrão do Apache2
sudo mv /tmp/linux-site-dio-main/*.* /var/www/html/

# reinicia o apache
sudo systemctl restart apache2
