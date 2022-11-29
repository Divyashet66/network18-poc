#!/bin/sh -x


echo "Hi There!"

cd modules

echo "Starting Terraform Module"
echo "----------------------------------------------------------------------------------"

cd ssh-jenkins
pwd
terraform init
terraform plan -out="dev.plan"
terraform apply -auto-approve -lock=false > apply.txt
terraform output instance_ip > ip.txt
cat ip.txt | tr -d '"' >out.txt
my_var=$(cat out.txt)
#terraform destroy -auto-approve > delete.txt
cd ..

echo "----------------------------------------------------------------------------------"
echo "Done With Terraform"
echo "-----------------------------------------------------------------------------------"




echo "Configuring Ansible"
echo "-----------------------------------------------------------------------------------"


cd inventories
pwd
sleep 5
echo "[My_Group]\n${my_var} ansible_ssh_user=niveus ansible_ssh_private_key_file=~/.ssh/lab_ssh_key  ansible_python_interpreter=/usr/bin/python3">> hosts
echo "Sucessfully appended"
cd ..
pwd
ssh ${my_var} ls
ansible My_Group -m ping


#sudo cp -r inventories/ ansible.cfg  install-jenkins/
#sudo cp -r inventories/ ansible.cfg  install-plugins/
#sudo cp -r inventories/ ansible.cfg  create-job/

echo "Done!"
echo "-----------------------------------------------------------------------------------"












#service jenkins stop
#sudo apt-get remove --purge jenkins
#sudo apt-get autoclean
#sudo apt-get clean
#sudo apt-get autoremove

