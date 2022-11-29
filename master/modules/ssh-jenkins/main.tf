## This is the main.tf file where all the resources are configured
################ Networking
# This block defines VPC network configurations
module "vpc" {
  source     = "./modules/vpc"
  name       = var.vpc_name
  app_prefix = var.app_prefix
  project    = var.project
}

# This block defines VPC subnet configurations
module "subnet" {
  source      = "./modules/subnet"
  subnet_name = var.subnet_name
  app_prefix  = var.app_prefix
  project     = var.project
  region      = var.region
  vpc_id      = module.vpc.vpc_id
  cidr_range  = var.cidr_range
  #sec_range2  = var.sec_range2
  #sec_range3  = var.sec_range3
  #sec_cidr_range ="10.0.0.1/16"
}

/*
################ VM
#This block configures a VM ss
module "vm" {
  source       = "./modules/vm"
  project      = var.project
  region       = var.region
  name         = var.bastion_name
  app_prefix   = var.app_prefix
  image        = var.image
  firewall_name = var.firewall_name
  source_ranges = var.source_ranges
  machine_type = var.vm_machine_type
  tags         = [var.tags]
  ssh_pub_key_path = var.ssh_pub_key_path
  ssh_username = var.ssh_username
  zone         = var.zone
  vpc_id       = module.vpc.vpc_id
  labels       = var.labels
  subnet_id    = module.subnet.subnet
}

*/
################# Cluster
# This block configures GKE private cluster
module "gke" {
  source   = "./modules/gke"
  project  = var.project
  location = "${var.region}-a"
  #regional         = true
  zone           = "${var.region}-a"
  cluster_name = var.gke_name
  gke_name = var.gke_name
  initial_node_count = var.initial_node_count
  node_pool_name =var.node_pool_name
  app_prefix   = var.app_prefix
  vpc_id       = module.vpc.vpc_id
  subnet_id    = module.subnet.subnet
  #vm_ip            = module.vm.vm_ip
  gke_machine_type = var.gke_machine_type
  master_cidr      = var.master_cidr
  master_auth_cidr = var.master_auth_cidr
  #labels           = var.labels
}

/*
output "instance_ip" {
  value = module.vm.public_ip
}

*/
