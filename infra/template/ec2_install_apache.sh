#! /bin/bash
set -e
echo "Updating packages"
yes | sudo apt update
echo "Installing python3 and pip3"
yes | sudo apt install python3 python3-pip
echo "Cloning the repository"
git clone https://github.com/prkltos/python-mysql-db-proj-1.git
sleep 20
echo "Installing nodejs and npm"
yes |  sudo apt-get install nodejs npm
nodejs -v
npm -v
echo "Installing python3-venv"
sudo apt-get install python3-venv
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