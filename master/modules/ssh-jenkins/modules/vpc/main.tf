# This is the main.tf file for VPC module

# Create VPC with custom subnets. Subnets defined in Subnet module
resource "google_compute_network" "vpc" {
  name                    = "${var.name}-${var.app_prefix}"
  auto_create_subnetworks = false
}
/*
# Creating a network peering to allow internal ip address connectivity across VPC network
# Required for CloudSQL
resource "google_compute_global_address" "private_ip_address" {
  provider      = google-beta
  name          = "${var.name}-${var.private-ip-address}-${var.app_prefix}"
  purpose       = "VPC_PEERING"
  project       = var.project
  address_type  = "INTERNAL"
  prefix_length = var.private_ip_range
  network       = google_compute_network.vpc.id
}

# Defining a provider to enable service networking API
resource "google_service_networking_connection" "private_vpc_connection" {
  provider                = google-beta
  network                 = google_compute_network.vpc.name
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_ip_address.name]
}

*/