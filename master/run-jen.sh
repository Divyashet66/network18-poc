#!/bin/sh -x
cd modules
echo "-----------------------------------------------------------------------------------"
echo "Starting Jenkins Installation"
echo "-----------------------------------------------------------------------------------"
#ansible-playbook -i $my_var, jenkins.yml > output.txt
ansible-playbook -vv install-jenkins/jenkins.yml
echo "Done With Jenkins"

echo "-----------------------------------------------------------------------------------"