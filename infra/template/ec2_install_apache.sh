#!/bin/bash

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
sudo apt-get install unzip
sudo apt-get install -y apt-transport-https
sudo apt-get install -y software-properties-common wget

#Install K3S
curl -sfL https://get.k3s.io | sh - 
# Check for Ready node, takes ~30 seconds 
sleep 20
sudo chmod +r /etc/rancher/k3s/k3s.yaml
k3s create namespace monitoring
k3s create namespace prod
k3s create namespace test
k3s create namespace dev
k3s get pods --all-namespaces
K3S get svc --all-namespaces

sudo mkdir /home/ubuntu/bravo
cd /home/ubuntu/bravo
touch bravo.txt
echo echo "$(k3s get pods --all-namespaces)" > bravo.txt
