provider "google" {
 
  region  = "us-central1"
  project = "sabrinnasr2050"
}
# terraform {
#   backend "gcs" {
#     bucket = "<your-bucket>"
#     prefix = "terraform/state"
#   }