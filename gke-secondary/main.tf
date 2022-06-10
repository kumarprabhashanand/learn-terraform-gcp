provider "google" {
  #credentials = file(var.credentials_file)
  project = var.project_id
}

# GKE cluster
resource "google_container_cluster" "secondary" {
  name     = "${var.project_id}-gke-sec"
  location = var.region

  enable_autopilot = true
  release_channel {
    channel = "STABLE"
  }
  node_locations  = ["asia-south2-a"]

  network    = var.vpc_name
  subnetwork = var.subnet_name
}
