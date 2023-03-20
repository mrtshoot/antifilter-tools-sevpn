#!/bin/bash
set -eu

#get insite and outside informations
read -p "InsideServer IP: " INSIDE_IP
read -p "InsideServer SSH Password: " INSIDE_SSH_PASS
read -p "OutsideServer IP: " OUTSIDE_IP
read -p "OutsideServer SSH Password: " OUTSIDE_SSH_PASS
read -p "Squidproxy Username: " SQUID_USER
read -p "Squidproxy Password: " SQUID_PASS

#Install requirementes
sudo apt update -y
sudo apt install -y ansible sshpass

#Set Inside and Outside Servers and create inventory file
sed -i 's/INSIDE_IP/$INSIDE_IP/g' inventory
sed -i 's/INSIDE_SSH_PASS/$INSIDE_SSH_PASS/g' inventory
sed -i 's/OUTSIDE_IP/$OUTSIDE_IP/g' inventory
sed -i 's/OUTSIDE_SSH_PASS/$OUTSIDE_SSH_PASS/g' inventory

#run ansible command
ansible-playbook -i inventory playbook.yaml --extra-vars="USERNAME='${SQUID_USER}' PASSWORD='${SQUID_PASS}'"

#OpenVPN Certificate
ansible -m shell --become -a 'grep "byte ServerCert" /var/opt/antifilter-tools-sevpn/vpn_server.config | cut -d " " -f3 | fold -w 64' -i inventory inside