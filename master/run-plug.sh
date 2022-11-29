#!/bin/sh -x
cd modules
echo "-----------------------------------------------------------------------------------"
echo "Starting Plugins Installation"
echo "-----------------------------------------------------------------------------------"
#ansible-playbook -i $my_var, jenkins.yml > output.txt
ansible-playbook -vv install-plugins/plugins.yaml
echo "Done With Jenkins"

echo "-----------------------------------------------------------------------------------"