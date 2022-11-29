# This is the output.tf file for VPC  module

output "vpc_id" {
  value       = google_compute_network.vpc.id
  description = "GCP VPC for private connectivity"
}
/*
output "private_connection" {
  value       = google_service_networking_connection.private_vpc_connection
  description = "To link the CloudSQL and VPC modules"
}

*/