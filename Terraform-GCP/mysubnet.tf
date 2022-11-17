resource "google_compute_subnetwork" "msub" { 
  name                     = "msub" 
  ip_cidr_range            =  "10.0.2.0/24"                                           
  region                   = "us-central1"
  network                  = google_compute_network.mynetwork.id
  private_ip_google_access = true
 }
resource "google_compute_subnetwork" "rsub" { 
  name                     = "rsub"
  ip_cidr_range            =  "10.0.1.0/24"                                           
  region                   = "us-central1"
  network                  = google_compute_network.mynetwork.id
  private_ip_google_access = true

  secondary_ip_range {
    range_name    = "podrange"  #pod
    ip_cidr_range = "10.0.3.0/24"                                                      
  }
  secondary_ip_range {
    range_name    = "serrange"  #service
    ip_cidr_range = "10.0.4.0/24"                            
  }
 }




