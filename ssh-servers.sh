#!/bin/bash

cd ansible

nodes=`cat nodes.txt`

for item in $nodes
do
    node=`echo $item | cut -f 1 -d'='`
    field=`echo $item | cut -f 2 -d'='`
    sed -i "/\[kube\]/a ${node} ansible_host=${field}" inventory.txt
done

# ansible-playbook playbook-ssh.yml

# ssh-keygen
