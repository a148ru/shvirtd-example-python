#!/bin/bash -x

cd /opt
sudo git clone https://github.com/a148ru/shvirtd-example-python
cd shvirtd-example-python
docker compose up -d
echo  "Done"
