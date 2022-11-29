variable "project" {
  description = "GCP project id"
}

variable "vpc_id" {
  description = "GCP VPC for GKE deployment"
}

variable "location" {
  description = "GCP location for GKE deployment"
}

variable "zone" {
  type        = string
  description = "GCP default zone for all deployments"
}

variable "subnet_id" {
  description = "GCP subnet for GKE deployment"
}

variable "master_auth_cidr" {
  description = "Master authorized IP ranges for GKE cluster"
}

variable "master_cidr" {
  description = "CIDR range for Master endpoint. Requires /28 range"
}


variable "cluster_name" {
  description = "Cluster name"
}


variable "gke_name" {
  description = "GKE name"
}


variable "gke_machine_type" {}
#variable "vm_ip" {}
variable "app_prefix" {}
#variable "labels" {}

variable "initial_node_count" {
  type        = number
  description = "Initial nodecount for GKE cluster. For regional cluster, number of nodes is initial count * zones in the region"
}

variable "node_pool_name" {
  description = "Node pool name"
}
