#! /bin/bash

yes | sudo apt update
yes | sudo apt install apache2
echo "Installing python3 and pip3"
yes | sudo apt install python3 python3-pip
echo "Cloning the repository"
git clone https://github.com/prkltos/python-mysql-db-proj-1.git
sleep 20
echo "Installing nodejs and npm"
yes | sudo apt-get install nodejs npm
nodejs -v
npm -v
echo "Installing python3-venv"
yes | sudo apt-get install python3-venv 
echo "Navigating to the project directory"
cd python-mysql-db-proj-1
echo "Creating a virtual environment"
python3 -m venv venv
echo "Activating the virtual environment"
source venv/bin/activate
echo "Installing requirements"
pip3 install -r requirements.txt
echo 'Waiting for 30 seconds before running the app.py'
setsid python3 -u app.py &
sleep 30

# Mise à jour des paquets existants
sudo apt-get update

# Ajout de la clé GPG de Grafana
curl https://packages.grafana.com/gpg.key | sudo apt-key add -

# Ajout du référentiel Grafana
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

# Mise à jour des paquets existants
sudo apt-get update

# Installation de Grafana
sudo apt-get install -y grafana

# Démarrage du service Grafana
sudo systemctl start grafana-server# Téléchargement de la dernière version de Prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.30.3/prometheus-2.30.3.linux-amd64.tar.gz


echo  "=======================PROMETHEUS INSTALLATION======================="


# Téléchargement de la dernière version de Prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.30.3/prometheus-2.30.3.linux-amd64.tar.gz

# Extraction du fichier téléchargé
tar xvfz prometheus-*.tar.gz

# Déplacement dans le répertoire de Prometheus
cd prometheus-2.30.3.linux-amd64

# Copie des fichiers binaires
sudo cp ./prometheus /usr/local/bin/
sudo cp ./promtool /usr/local/bin/

# Création du répertoire pour la configuration de Prometheus
sudo mkdir /etc/prometheus

# Copie des fichiers de configuration
sudo cp -r ./consoles /etc/prometheus
sudo cp -r ./console_libraries /etc/prometheus

# Création du fichier de service systemd pour Prometheus
echo "[Unit]
Description=Prometheus
Wants=network-online.target
After=network-online.target

[Service]
User=root
ExecStart=/usr/local/bin/prometheus \
--config.file /etc/prometheus/prometheus.yml \
--storage.tsdb.path /var/lib/prometheus/ \
--web.console.templates=/etc/prometheus/consoles \
--web.console.libraries=/etc/prometheus/console_libraries

[Install]
WantedBy=multi-user.target" | sudo tee /etc/systemd/system/prometheus.service

# Démarrage du service Prometheus
sudo systemctl daemon-reload
sudo systemctl start prometheus

# Activation du service Prometheus au démarrage
sudo systemctl enable prometheus