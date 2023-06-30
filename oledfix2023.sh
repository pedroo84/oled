#!/bin/sh

echo "Installing dependencies"
opkg update
opkg install ifstat iputils-ping
echo "Downloading patch"
wget https://github.com/pedroo84/oled/raw/main/oledfixpedro.tar.gz -O oledfixpedro.tar.gz
echo "Extracting files"
tar -xvzf oledfixpedro.tar.gz -C /etc/
echo "Done! Loss receive and send are not available with this patch"