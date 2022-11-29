# This is the output.tf file for Subnet module
output "subnet" {
  value       = google_compute_subnetwork.subnet.id
  description = "GCP subnet ID"
}
