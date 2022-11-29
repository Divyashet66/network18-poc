# This is the output.tf file for bastion module

output "vm_ip" {
  value       = google_compute_instance.default.network_interface.0.network_ip
  description = "Internal IP of bastion"
}

output "public_ip" {
  value       = google_compute_instance.default.network_interface.0.access_config.0.nat_ip
  description = "Internal IP of bastion"
}
