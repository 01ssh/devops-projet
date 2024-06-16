#!/bin/bash




#download prometheus 
mkdir prometheus
mkdir nodeexporter
cd prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.53.0-rc.1/prometheus-2.53.0-rc.1.linux-amd64.tar.gz
tar vxzf prometheus-2.53.0-rc.1.linux-amd64.tar.gz
rm prometheus-2.53.0-rc.1.linux-amd64.tar.gz
cd prometheus-2.53.0-rc.1.linux-amd64
ls -lart 
touch exporter-config.yaml
echo "global:
   scrape_interval: 15s

scrape_configs:
   - job_name: node
     static_configs:
        - targets: ['localhost:9100']" >> exporter-config.yaml

./prometheus --config.file=exporter-config.yaml  


cd ..
cd nodeexporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.8.1/node_exporter-1.8.1.linux-amd64.tar.gz
tar vxzf node_exporter-1.8.1.linux-amd64.tar.gz
cd node_exporter-1.8.1.linux-amd64
ls -lart 
./node_exporter 
echo "tout est fini"

#sudo lsof -i :9100


#update
sudo apt-get install unzip
sudo apt-get install -y apt-transport-https
sudo apt-get install -y software-properties-common wget
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
echo "deb https://packages.grafana.com/enterprise/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
yes | sudo apt-get update
yes | sudo apt-get install grafana-enterprise
sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl enable grafana-server.service
sudo systemctl status grafana-server 



################################### script DST ########################################

##################PROMETHEUS SERVER#################################################
wget -c https://github.com/prometheus/prometheus/releases/download/v2.42.0/prometheus-2.42.0.linux-amd64.tar.gz
tar xvf ~/prometheus-2.42.0.linux-amd64.tar.gz
mv ~/prometheus-2.42.0.linux-amd64 ~/prometheus


####################################NODE EXPORTER####################################
wget https://github.com/prometheus/node_exporter/releases/download/v1.0.1/node_exporter-1.0.1.linux-amd64.tar.gz
tar -xvf ~/node_exporter-1.0.1.linux-amd64.tar.gz


