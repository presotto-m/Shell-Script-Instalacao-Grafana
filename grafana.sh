#!/bin/bash

# Atualizando repositorios

apt update -y
apt upgrade -y

# Download grafana

wget -q -O - https://packages.grafana.com/gpg.key | apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | tee -a /etc/apt/sources.list.d/grafana.list
apt update -y

# Instalação Grafana

apt install grafana -y

# Ativando serviço e iniciando serviço

systemctl enable grafana-server
systemctl start grafana-server

# Acesso, usuario: (admin) senha: (admin)


