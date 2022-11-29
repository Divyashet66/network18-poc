#This file contains common variables to be used across modules

variable "project" {
  description = "Google Cloud Platform (GCP) Project ID."
  type        = string
}

variable "app_prefix" {
  type        = string
  description = "app prefix for resource names"
}


variable "ssh_pub_key_path" {
  type = string
}

variable "ssh_username" {
  type = string
}

variable "region" {
  type        = string
  description = "GCP default region for all deployments"
}

variable "zone" {
  type        = string
  description = "GCP default zone for all deployments"
}

variable "vpc_name" {
  type        = string
  description = "VPC name"
}

variable "subnet_name" {
  type        = string
  description = "subnet name"
}




variable "image" {
  type        = string
  description = "image"
}


variable "firewall_name" {
  type        = string
  description = "firewall_name"
}


variable "source_ranges" {
  type        = string
  description = "source_ranges"
}



variable "cidr_range" {
  type        = string
  description = "subnet cidr range"
}



variable "bastion_name" {
  type        = string
  description = "bastion host name"
}

variable "vm_machine_type" {
  type        = string
  description = "machine_type for bastion host"
}

variable "labels" {
  description = "List of labels to attach to the VM instance."
  type        = map(any)
}

variable "tags" {
  type        = string
  description = "tags for bastion host used for firewall"
}


variable "gke_name" {
  type        = string
  description = "GKE cluster name"
}

variable "gke_machine_type" {
  type        = string
  description = "machine type for gke cluster"
}

variable "master_cidr" {
  type        = string
  description = "master_cidr"
}

variable "master_auth_cidr" {
  type        = string
  description = "master_auth_cidr"
}

variable "initial_node_count" {
  type        = string
  description = "initial_node_count"
}

variable "node_pool_name" {
  type        = string
  description = "node_pool_name"
}