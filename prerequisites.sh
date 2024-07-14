#!/bin/bash

# set -e
# set -a; . .env; set +a
# set -u


apt-add-repository ppa:ansible/ansible
apt update -y
apt install -y ansible
ansible --version

echo "!!! Вставьте ip нод kubernetes в ansible/inventory.txt"
echo "Затем настройте ssh-ключи для всех серверов"
