
resource "google_container_cluster" "cluster" {
  name               = "${var.app_prefix}-${var.gke_name}"
  project = var.project
  location           = var.location
  #zone           = "${var.region}-a"
  initial_node_count = var.initial_node_count
  remove_default_node_pool = true
  network = var.vpc_id
  enable_binary_authorization = false
  subnetwork = var.subnet_id
  ip_allocation_policy {
    cluster_ipv4_cidr_block = ""
    services_ipv4_cidr_block = ""
  }
  /*
  private_cluster_config {
    master_ipv4_cidr_block  = var.master_cidr #Required for private cluster.
    enable_private_endpoint = false            #Cluster endpoint is private and not accessible by default
    enable_private_nodes    = true            #Node ips are private
  }

  master_authorized_networks_config {
    cidr_blocks {
      display_name = "user"
      cidr_block = var.master_auth_cidr #Master Authorized IP ranges that can connect to the cluster
    }
  }
  */
}

resource "google_container_node_pool" "pool1" {
  name       = "${var.node_pool_name }-node-group"
  location   = var.location
  #zone            = "${var.region}-a"
  cluster    = google_container_cluster.cluster.name
  initial_node_count = var.initial_node_count
  autoscaling {
    min_node_count = 1
    max_node_count = 1
  }
  node_config {
    preemptible  = false
    machine_type = var.gke_machine_type

  }
}

