#!/bin/sh -x
cd modules
echo "-----------------------------------------------------------------------------------"
echo "Starting Creating Job"
echo "-----------------------------------------------------------------------------------"
#ansible-playbook -i $my_var, jenkins.yml > output.txt
ansible-playbook -vv create-job/job.yaml
echo "Done With Jenkins"

echo "-----------------------------------------------------------------------------------"