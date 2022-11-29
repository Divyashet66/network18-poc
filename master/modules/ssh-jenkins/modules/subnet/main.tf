# This is the main.tf file for Subnet module
# Creating VPC subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.subnet_name}-${var.app_prefix}"
  region        = var.region
  network       = var.vpc_id
  ip_cidr_range = var.cidr_range
  
  
  /*
  secondary_ip_range  =[
  {
    range_name    = "${var.subnet_name}-secondary-range2"
    ip_cidr_range = var.sec_range2
  },
  {
    range_name    = "${var.subnet_name}-secondary-range3"
    ip_cidr_range = var.sec_range3
  },
]
  */
}