#!/bin/bash
#Update the Linux-Server
yum update -y
#Install The Ansible-Engine
yum install ansible*  vim-enhanced net-tools tree  git -y
#Set The Machine Hostname
hostnamectl  set-hostname ansible-server
bash
#Clone The Repository From Git-Hub
git clone https://github.com/Ishan-Bharti/file-move-aws.repo.git
cd file-move-aws.repo/
mkdir /container
#Copy The Repo Content To Container Directory
cp -rvf container/* /container/
cd
#Create The Ansible Directory
mkdir -p /ansible
cd /ansible
cp -rvf /etc/ansible/ansible.cfg ansible/
#Create The Inventory File For Host
touch inventory
echo "[prod]" > inventory
echo "localhost ansible_connection=local" >> inventory
export ANSIBLE_CONFIG=/ansible/ansible.cfg
cd 
#Export The ansible.cfg In .bashrc
echo 'export ANSIBLE_CONFIG=/ansible/ansible.cfg' >> ~/.bashrc
source ~/.bashrc



