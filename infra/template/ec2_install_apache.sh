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

