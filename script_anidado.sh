#!/bin/bash
echo "IP Actual:"
ip addr show | grep "/24"
sudo ip addr del 192.168.100.116/24 dev enp0s3
sudo ip addr add 192.168.100.120/24 dev enp0s3
echo "IP Nueva:"
ip addr show | grep "/24"
sudo ip route add default via 192.168.100.130
echo "Ruta Nueva:"
ip ro | grep "192.168.100.130"
echo "Instalacion ImageMagick:"
sudo apt update && sudo apt upgrade -y
sudo apt install imagemagick
