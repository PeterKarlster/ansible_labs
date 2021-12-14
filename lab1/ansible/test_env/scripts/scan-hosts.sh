#!/bin/bash

KNOWN_HOSTS=/root/.ssh/known_hosts

echo > "${KNOWN_HOSTS}"

for i in $(cat ./hosts_list.txt)
do
ssh-keyscan $i >> "${KNOWN_HOSTS}"
done
