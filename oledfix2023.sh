#!/bin/sh

echo "Installing dependencies"
opkg update
opkg install ifstat iputils-ping
echo "Downloading patch"
wget https://transfer.sh/91ocioFmgT/oledfixpedro.tar.gz -O oledfixpedro.tar.gz
echo "Extracting files"
tar -xvzf oledfixpedro.tar.gz -C /etc/ssd/
echo "Done! Loss receive and send are not available with this patch"