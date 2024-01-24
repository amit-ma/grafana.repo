#!/bin/bash
#Create the Ansible Directory
mkdir /ansible
cd /ansible
cp -rvf /etc/ansible/ansible.cfg ansible/
#Creat the inventory for host entyr
touch inventory
echo "[prod]" > inventory
echo "localhost ansible_connection=local" >> inventory
#Export the ansible path
export ANSIBLE_CONFIG=/ansible/ansible.cfg
echo 'export ANSIBLE_CONFIG=/ansible/ansible.cfg' >> ~/.bashrc
source ~/.bashrc
