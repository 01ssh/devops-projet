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


# Installation de Grafana
sudo apt-get install -y grafana

# Démarrage du service Grafana
sudo systemctl start grafana-server

#Install K3S
curl -sfL https://get.k3s.io | sh - 
sudo chmod 644 /etc/rancher/k3s/k3s.yaml
# Check for Ready node, takes ~30 seconds 
sudo lsof -i :9090
sudo ufw disable

sudo k3s kubectl get node 
sudo k3s kubectl create namespace monitoring
sudo k3s kubectl create namespace prod
sudo k3s kubectl create namespace test
sudo k3s kubectl create namespace dev
sudo lsof -i :9090
sudo ufw disable

# Variables
PROMETHEUS_VERSION="2.41.0"
USER="prometheus"
GROUP="prometheus"
INSTALL_DIR="/etc/prometheus"
DATA_DIR="/var/lib/prometheus"

# Update the package list and install prerequisites
sudo apt-get update
sudo apt-get install -y wget tar

# Create Prometheus user and group
sudo groupadd --system $GROUP
sudo useradd -s /sbin/nologin --system -g $GROUP $USER

# Download and extract Prometheus
wget https://github.com/prometheus/prometheus/releases/download/v${PROMETHEUS_VERSION}/prometheus-${PROMETHEUS_VERSION}.linux-amd64.tar.gz
tar -xvf prometheus-${PROMETHEUS_VERSION}.linux-amd64.tar.gz
cd prometheus-${PROMETHEUS_VERSION}.linux-amd64

# Move binaries to /usr/local/bin
sudo mv prometheus /usr/local/bin/
sudo mv promtool /usr/local/bin/

# Create directories and set permissions
sudo mkdir -p $INSTALL_DIR $DATA_DIR
sudo mv consoles $INSTALL_DIR
sudo mv console_libraries $INSTALL_DIR
sudo mv prometheus.yml $INSTALL_DIR
sudo chown -R $USER:$GROUP $INSTALL_DIR $DATA_DIR

# Create Prometheus service file
sudo tee /etc/systemd/system/prometheus.service > /dev/null <<EOF
[Unit]
Description=Prometheus
Wants=network-online.target
After=network-online.target

[Service]
User=$USER
Group=$GROUP
Type=simple
ExecStart=/usr/local/bin/prometheus \
  --config.file $INSTALL_DIR/prometheus.yml \
  --storage.tsdb.path $DATA_DIR \
  --web.console.templates=$INSTALL_DIR/consoles \
  --web.console.libraries=$INSTALL_DIR/console_libraries

[Install]
WantedBy=multi-user.target
EOF

# Reload systemd and start Prometheus
sudo systemctl daemon-reload
sudo systemctl enable prometheus
sudo systemctl start prometheus

# Clean up
cd ..
rm -rf prometheus-${PROMETHEUS_VERSION}.linux-amd64*


#sudo k3s kubectl -n monitoring apply -f prometheus-clusterrole.yaml 
#sudo k3s kubectl -n monitoring apply -f prometheus-clusterrolebinding.yaml
#sudo k3s kubectl -n monitoring apply -f prometheus-config.yaml
#sudo k3s kubectl -n monitoring apply -f prometheus-deployment.yaml
#sudo k3s kubectl -n monitoring apply -f prometheus-service.yaml
#sudo k3s kubectl -n monitoring apply -f grafana-service.yaml
#sudo k3s kubectl -n monitoring apply -f grafana-deployment.yaml
#sudo k3s kubectl port-forward svc/prometheus-service 9090:9090




