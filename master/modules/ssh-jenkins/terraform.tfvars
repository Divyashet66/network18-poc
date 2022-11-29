#Defining terraform variables with the exact configuration

#--------------- Project Details -------------
project    = "tech-rnd-project"
app_prefix = "nett"
zone = "asia-south1-a"
region = "asia-south1"
#-------network

vpc_name    = "test-vpc"
subnet_name = "test-subnet"
cidr_range  = "10.0.0.0/16"


#---------------------------------------------------
ssh_pub_key_path = "/home/niveus/.ssh/lab_ssh_key.pub"
ssh_username     = "niveus"


#--------------- Labels and Tags ---------------
tags = "ssh"
labels = {
  "environment" = "dev"
}

#--------------------- GKE ---------------------
gke_name         = "jen-cluster"
node_pool_name   = "cicd"
gke_machine_type = "n1-standard-1"
master_cidr      = "172.16.0.0/28"
master_auth_cidr = "10.0.0.0/16"
initial_node_count = 1

#----------------- VM(Bastion host) ---------------
bastion_name    = "vm"
vm_machine_type = "e2-small"
image = "ubuntu-minimal-1804-lts"
firewall_name = "cicd-firewall"
source_ranges = "0.0.0.0/0"