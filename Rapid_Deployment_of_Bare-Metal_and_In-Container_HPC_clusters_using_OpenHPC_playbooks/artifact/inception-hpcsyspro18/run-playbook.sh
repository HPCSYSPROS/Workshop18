#!/bin/bash

cd playbook
ansible-playbook -i ../inventory ${1}.yml
