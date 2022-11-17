resource "google_compute_router" "myrouter" {
  name    = "router"
  region  = "us-central1"
  network = google_compute_network.mynetwork.id
}