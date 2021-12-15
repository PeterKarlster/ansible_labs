#!/bin/bash

for i in $(cat ./hosts_list.txt)
do
ssh-keyscan $i >> ~/.ssh/known_hosts
done
