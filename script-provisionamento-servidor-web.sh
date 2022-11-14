#Script de Criação de Estrutura de Usuários, Diretórios e Permissões

#!/bin/bash

echo "INICIANDO SCRIPT"

echo "Atualizando o servidor"

apt update -y & apt upgrade -y

echo "Finalizando atualização do servidor"

    echo "Instalando o apache2 e unzip"

    apt install apache2 -y
    apt install unzip -y

    echo "Finalizando instalação"

        echo "Baixando aplicação web"

        cd /tmp
        wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
        unzip main.zip
        cp -R * /var/www/html/

        echo "Aplicação baixada e descompactada"

echo "Aplicação no ar!"

echo "FIM!!!!"