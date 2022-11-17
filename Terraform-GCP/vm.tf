
data "google_compute_image" "my_image" {
  name    = "ubuntu-2004-focal-v20221018"
  project = "ubuntu-os-cloud"
}

resource "google_compute_instance" "vm_auth" {
name = "vm-auth"
machine_type = "e2-small"
zone = "us-central1-a"


boot_disk {
    initialize_params {
      image = data.google_compute_image.my_image.self_link
    }
  }

network_interface {
network = google_compute_network.mynetwork.name
subnetwork = google_compute_subnetwork.msub.id

}
}