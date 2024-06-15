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
sudo systemctl start grafana-server

#Install K3S
curl -sfL https://get.k3s.io | sh - 
# Check for Ready node, takes ~30 seconds 
sudo k3s kubectl get node 
sudo K3s kubectl create namespace monitoring
sudo K3s kubectl create namespace prod
sudo K3s kubectl create namespace test
sudo K3s kubectl create namespace dev
sudo k3s kubectl -n monitoring apply -f prometheus-clusterrole.yaml
sudo k3s kubectl -n monitoring apply -f prometheus-clusterrolebinding.yaml
sudo k3s kubectl -n monitoring apply -f prometheus-config.yaml
sudo k3s kubectl -n monitoring apply -f prometheus-deployment.yaml
sudo k3s kubectl -n monitoring apply -f prometheus-service.yaml

kubectl port-forward svc/prometheus-service 9090:9090





echo  "===========================KS3 Installed==========================="

echo "===========================helm install==========================="
# Ajout du repo Helm (remplacez 'myrepo' et 'https://charts.myrepo.com' par le nom et l'URL de votre repo)
helm install grafana grafana/grafana

sudo chmod 644 /etc/rancher/k3s/k3s.yaml

sudo lsof -i :9090
kubectl port-forward svc/prometheus-server 9090:80


