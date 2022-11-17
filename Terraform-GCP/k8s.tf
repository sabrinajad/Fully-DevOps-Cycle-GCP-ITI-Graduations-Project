resource "google_container_cluster" "final-project" {
  name                     = "final-project"
  location                 = "us-central1-a"
  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = google_compute_network.mynetwork.id
  subnetwork               = google_compute_subnetwork.rsub.id
  networking_mode          = "VPC_NATIVE"

#   multi-zonal cluster
#   node_locations = [
#     "us-central1-b"
#   ]

  addons_config {
    http_load_balancing {
      disabled = true
    }
    horizontal_pod_autoscaling {
      disabled = false
    }
  }

  release_channel {
    channel = "STABLE"
  }

  workload_identity_config {
    workload_pool = "sabrinnasr2050.svc.id.goog"
  }

  ip_allocation_policy {
    cluster_secondary_range_name  = "podrange"
    services_secondary_range_name = "serrange"
  }

  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = true
    master_ipv4_cidr_block  = "172.16.0.0/28"   #IT WILL PEERING WITH MYNETWORK VPC ^_^
  }


  master_authorized_networks_config {
  cidr_blocks {
  cidr_block   = "10.0.2.0/24"
  display_name = "jump-network"
   }
  }
}
