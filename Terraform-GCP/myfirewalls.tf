resource "google_compute_firewall" "ssh" {
  name    = "ssh"
  network = google_compute_network.mynetwork.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}
