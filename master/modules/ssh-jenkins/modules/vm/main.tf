

# Creating the VM 
resource "google_compute_instance" "default" {
  name         = "${var.name}-${var.app_prefix}"
  machine_type = var.machine_type
  zone         = var.zone
  #Disk configuration
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  # Attach network tags below
  tags   = var.tags
  labels = var.labels
  allow_stopping_for_update = true

  metadata = {
     ssh-keys = join("\n", [for key in var.ssh_keys : "${key.user}:${key.publickey}"])
  }
  
  network_interface {
    network    = var.vpc_id
    subnetwork = var.subnet_id
     access_config {
      // Ephemeral public IP
    }
  }
  
  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = "460440866465-compute@developer.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
  
}


# Creating the firewall rule to allow traffic on port 22 for the VM created above.
resource "google_compute_firewall" "default" {
  name          = "${var.firewall_name}-${var.app_prefix}-a-b"
  network       = var.vpc_id
  source_tags   = var.tags
  source_ranges = [var.source_ranges] #Google IP that acts as a proxy enabling IAP
  allow {
    protocol = "tcp"
    ports    = ["8080","9000","9002","22"]
  }
}

