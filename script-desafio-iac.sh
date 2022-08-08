#!/bin/bash

# Script que possui a finalidade de automatizar o provisionamento de um servidor apache no Linux

# Primeiro passo será a atualização dos pacotes do servidor Linux

echo "Atualizando o servidor, por favor aguarde um instante..."

apt-get update
apt-get upgrade -y

# Próximo passo será a instalação do software Apache e do software Unzip, ambos necessários para realização dessa tarefa

echo "Instalando o software Apache e o software Unzip, por favor aguarde..."

apt-get install apache2 unzip -y

# Na sequência será feito o download dos arquivos necessários, e a cópia para o diretório padrão do Apache

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp

# Identificamos o endereço do local onde serão coletados os arquivos

wget https: //github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Descompactando o arquivo baixado

unzip main.zip

cd linux-site-dio-main

# Copiando os arquivos para o diretório padrão

cp -R * /var/www/html/
