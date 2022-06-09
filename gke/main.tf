provider "google" {
  #credentials = file(var.credentials_file)
  project = var.project_id
}

# GKE cluster
resource "google_container_cluster" "primary" {
  name     = "${var.project_id}-gke"
  location = var.region

  enable_autopilot = true
  release_channel {
    channel = "STABLE"
  }
  node_locations  = ["asia-south1-a", "asia-south1-b"]

  network    = var.vpc_name
  subnetwork = var.subnet_name
}
