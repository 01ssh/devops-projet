#!/bin/bash

#download prometheus 
mkdir prometheus
mkdir nodeexporter
cd prometheus



wget https://github.com/prometheus/prometheus/releases/download/v2.53.0-rc.1/prometheus-2.53.0-rc.1.linux-amd64.tar.gz
tar vxzf prometheus-2.53.0-rc.1.linux-amd64.tar.gz
cd prometheus-2.53.0-rc.1.linux-amd64
ls -lart 
./prometheus


cd ..
cd nodeexporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.8.1/node_exporter-1.8.1.linux-amd64.tar.gz




