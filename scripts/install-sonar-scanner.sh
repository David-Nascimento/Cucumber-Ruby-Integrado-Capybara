#!/bin/bash

cd /tmp || exit
echo "Downloading sonar-scanner....."
if [ -d "/tmp/sonar-scanner-cli-3.2.0.1227-linux.zip" ];then
    sudo rm /tmp/sonar-scanner-cli-3.2.0.1227-linux.zip
fi
wget -q https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.2.0.1227-linux.zip
echo "Download completed."

echo "Unziping downloaded file..."
unzip sonar-scanner-cli-3.2.0.1227-linux.zip
echo "Unzip completed."
rm sonar-scanner-cli-3.2.0.1227-linux.zip

echo "Installing to opt..."
if [ -d "/var/opt/sonar-scanner-3.2.0.1227-linux" ];then
    sudo rm -rf /var/opt/sonar-scanner-3.2.0.1227-linux
fi
sudo mv sonar-scanner-3.2.0.1227-linux /var/opt

echo "Installation completed successfully."

echo "You can use sonar-scanner!"